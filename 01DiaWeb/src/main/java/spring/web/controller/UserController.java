package spring.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.domain.User;
import spring.service.user.UserService;

import com.google.gson.Gson;

@Controller
public class UserController {

	@Autowired
	@Qualifier("userService")
	private UserService userService;

	//constructor
	public UserController() {		
		System.out.println("::" + getClass() + "default Constractor call...");
	}

	//update user info by user
		@RequestMapping("/updateUserforAdmin.do")
		public ModelAndView updateUserforAdmin(@ModelAttribute("user") User user,
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
				int recid = Integer.parseInt(String.valueOf(Math.round((int)userMap.get("recid"))));//double->int
				//int recid = (Integer)userMap.get("recid");
				
				
				System.out.println(recid + ", " + userMap.get("email") + ", " + userMap.get("phone") + ", " +userMap.get("phone") + ", " +userMap.get("level") + ", "+ userMap.get("flag"));
				//vo. where recid
				
				user.setRecid(recid);
				user.setEmail((String) userMap.get("email"));
				user.setPhone((String)userMap.get("phone"));
				user.setAddr((String) userMap.get("addr"));
				user.setLevel((String)userMap.get("level"));
				user.setFlag((boolean) userMap.get("flag"));
			}			
			
						
			
			int result = userService.updateUserforAdmin(user);
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
