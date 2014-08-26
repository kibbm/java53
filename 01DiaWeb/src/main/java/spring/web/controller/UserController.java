package spring.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
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
			
		return "redirect:/index.html";
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
		
		return "redirect:/index.html";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session ) throws Exception{
		
		System.out.println("/logout.do");
		
		session.invalidate();
		
		return "redirect:/index.html";
	}
	
	//update user info by user
	@RequestMapping("/updateUserforAdmin.do")
	public ModelAndView updateUserforAdmin(
			String list,
			HttpServletRequest request,
			HttpSession session) throws Exception{
		
		System.out.println("\n::updateUserforAdmin.do () start...");
		
		
		System.out.println("받은 파람 list : " + list);
		
		Gson gson = new Gson();
		ArrayList itemList = gson.fromJson(list, ArrayList.class);
		System.out.println("itemList : "+itemList);
		Map userMap;
		User user = new User();
		int result=0; 
		int resultNew=0;
		for (Object item : itemList) {
			userMap = (Map)item;

			int recid = ((Double)userMap.get("recid")).intValue();
			String userName = (String) userMap.get("userName");
			String level = (String)userMap.get("level");
			String email = (String) userMap.get("email");
			String phone = (String)userMap.get("phone");
			String addr = (String) userMap.get("addr");		
			//Boolean flag = (Boolean) userMap.get("flag");
			
			user.setRecid(recid);
			user.setUserName(userName);
			user.setLevel(level);
			user.setEmail(email);
			user.setPhone(phone);
			user.setAddr(addr);
			//user.setFlag(flag); //null??
			
			result = userService.updateUserforAdmin(user);	
			resultNew = result +  resultNew;//====
			System.out.println("result : " + result + ", resultNew : " + resultNew);
		}			
		System.out.println("==user :" +  user);
		System.out.println("resultNew : " + resultNew);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("user/mastertoDetail.html");
		
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
		//from User to json
		Gson gson = new Gson();
		
		for(int j=0;j<list.size();j++){
			User user = new User();
			
			user.setRecid(list.get(j).getRecid());
			user.setUserName(list.get(j).getUserName());
			user.setUserId(list.get(j).getUserId());
			user.setLevel(list.get(j).getLevel());
			user.setEmail(list.get(j).getEmail());
			user.setBirthdate(list.get(j).getBirthdate());
			user.setPhone(list.get(j).getPhone());
			user.setAddr(list.get(j).getAddr());
			user.setJoindate(list.get(j).getJoindate());
			user.setFlag(list.get(j).isFlag());
		}
		
		Map map = new HashMap();
		map.put("total", list.size());
		map.put("records", list);
		
		String jsonString = gson.toJson(map);
		System.out.println("\n :: jsonString : " + jsonString);
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("jsonString", jsonString);
		modelAndView.setViewName("user/listUserData.jsp");
				
		return modelAndView;		 
	}
		
}
