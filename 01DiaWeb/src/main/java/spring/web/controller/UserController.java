package spring.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import spring.domain.User;
import spring.service.user.UserService;

import com.google.gson.Gson;

@Controller
public class UserController {

	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

	//constructor
	public UserController() {		
		System.out.println("::" + getClass() + "default Constractor call...");
	}


	@RequestMapping("/addUserView.do")
	public String addUserView() throws Exception {

		System.out.println("/addUserView.do");
		
		return "/user/addUserView.jsp";
	}
	
	//회원가입
	@RequestMapping("/addUser.do")
	public String addUser(@ModelAttribute("user") User user) throws Exception{
		
		System.out.println("\n::addUser() start...");
	
	//	int newRecid = userService.getRecid() +1;
	//	user.setRecid(newRecid);

		userService.addUser(user);
			
		return "redirect:/main.html";
	}
	
	//학생 개인 정보 조회 
	@RequestMapping("/getUser.do")
	public String getUser(@ModelAttribute("userId") String userId, Model model) throws Exception{
		
		System.out.println("\n::getUser() start...");
		
		User user = userService.getUser(userId);
		model.addAttribute("user", user);
		
		 return "forward:/user/getUser.jsp";
	}
	
	//학생  정보 수정 view
	@RequestMapping("/updateUserView.do")
	public String updateUserView( @RequestParam("userId") String userId , Model model ) throws Exception{

		System.out.println("/updateUserView.do");
		//Business Logic
		User user = userService.getUser(userId);
	
		model.addAttribute("user", user);
		
		return "forward:/user/updateUser.jsp";
	}
	 
	//학생  정보 수정
	@RequestMapping("/updateUser.do")
	public String updateUser( @ModelAttribute("user") User user , Model model , HttpSession session) throws Exception{

		System.out.println("/updateUser.do");
		
		//Business Logic
		userService.updateUser(user);
		
		String sessionId=((User)session.getAttribute("user")).getUserId();
		if(sessionId.equals(user.getUserId())){
			session.setAttribute("user", user);
		}
				
		return "redirect:/getUser.do?userId="+user.getUserId();
	}
	
	
	//회원탈퇴	
	@RequestMapping("/updateLeaveUser.do")
	public int updateLeaveUser( @ModelAttribute("user") User user , 
																								Model model , HttpSession session) throws Exception{
		
		System.out.println("/updateLeaveUser.do");
		//Business Logic
		userService.updateLeaveUser(user);
				
		//세션 끊기
		session.invalidate();
		
		return 0;		
	}
		
	@RequestMapping("/loginView.do")
	public String loginView() throws Exception{
		
		System.out.println("/loginView.do");

		return "redirect:/user/loginView.jsp";
	}
	
	@RequestMapping("/login.do")
	public String login(@ModelAttribute("user") User user , HttpSession session ) throws Exception{
		
		System.out.println("/login.do");
		//Business Logic
		User dbUser=userService.getUser(user.getUserId());
		
		System.out.println("getUserId: "+user.getUserId());
		
		if( user.getPassword().equals(dbUser.getPassword())){
			session.setAttribute("user", dbUser);
		}
		
		return "redirect:/main.html";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session ) throws Exception{
		
		System.out.println("/logout.do");
		
		session.invalidate();
		
		return "redirect:/main.html";
	}
	
	//update user info by user
		@RequestMapping("/updateUserforAdmin.do")
		public ModelAndView updateUserAdmin(@ModelAttribute("user") User user,
				String list,
				HttpServletRequest request,
				HttpSession session) throws Exception{
			
			System.out.println("\n::updateUserforAdmin.do () start...");
			
			Gson gson = new Gson();
			ArrayList itemList = gson.fromJson(list, ArrayList.class);			
			Map userMap;
						
			
			for (Object item : itemList) {
				userMap = (Map)item;
				System.out.println(userMap.get("recid") + "," + userMap.get("email"));
				
				//?????
				//recid = Integer.parseInt(String.valueOf(Math.round((int)userMap.get("recid"))));//double->int
				int recid = (Integer)userMap.get("recid");
				
				//System.out.println(recid + ", " + userMap.get("email") + ", " + userMap.get("phone") + ", " +userMap.get("phone") + ", " +userMap.get("level") + ", "+ userMap.get("flag"));
				//vo. where recid
				
				user.setRecid(recid);
				user.setEmail((String) userMap.get("email"));
				user.setPhone((String)userMap.get("phone"));
				user.setAddr((String) userMap.get("addr"));
				user.setLevel((String)userMap.get("level"));
				user.setFlag((boolean) userMap.get("flag"));
			}			
			
						
			
			int result = userService.updateUserAdmin(user);
			System.out.println("result : " + result);
			/* ..!
			 * String sessionId = ((Student) session.getAttribute("student")).getUserId();
			
			if(sessionId.equals(student.getUserId())){
				session.setAttribute("student", student);
			}*/
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("/student/mastertoDetail.html");
			//modelAndView.setViewName("/getStudent.do?id=" + student.getUserId());
			
			return modelAndView;		
		}
		
	@RequestMapping("/listUser.do")
	public ModelAndView listUser(HttpServletRequest request, HttpSession session)
			throws Exception{
		
		System.out.println("\n:: listUser.do start...");
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("user/mastertoDetail.html");
		
		return modelAndView;	
	}
	
	@RequestMapping("/listUserData.do")
	public ModelAndView listUserData(HttpServletRequest request, HttpSession session)
			throws Exception{
		
		System.out.println("\n:: listUserData.do start...");
		
		List<User> list = userService.getUserList();
		//String jsonString = "{\"records\" :" + list +"}";		
		String jsonString = "{\"total\":" + list.size() + ", \"records\" :" + list +"}";
		//System.out.println("\n :: jsonString : " + jsonString);
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("jsonString", jsonString);
		modelAndView.setViewName("user/listUserData.jsp");
				
		return modelAndView;		 
	}
	
}
