package spring.web.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spring.domain.User;
import spring.service.user.UserService;


@Controller
public class UserController {
	
	//Field
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	public UserController(){
		System.out.println("==> UserController default Constructor call......");
	}
	
	
	@RequestMapping("/list.do")
	public ModelAndView getList() throws Exception{
		System.out.println(":: ==> getList() start...... ");
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/user/list.jsp");
		
		String returnList = userService.getList();
		modelAndView.addObject("returnList", returnList);
		
		System.out.println(":: ==> getList() end......");
		
		String[] arrayList=userService.getArrayList();
		modelAndView.addObject("arrayList", arrayList);
		
		return modelAndView;
	}
}
