package spring.web.module;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.service.module.ModuleService;


@Controller
public class ModuleController {
	
	//Field
	@Autowired
	@Qualifier("moduleService")
	private ModuleService moduleService;
	
	public ModuleController(){
		System.out.println("==> moduleController default Constructor call......");
	}
	
	
	@RequestMapping("/list.do")
	public ModelAndView getList() throws Exception{
		System.out.println(":: ==> getList() start...... ");
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/module/list.jsp");
		
		String returnList = moduleService.getList();
		modelAndView.addObject("returnList", returnList);
		
		System.out.println(":: ==> getList() end......");
		
		return modelAndView;
	}
	
	@RequestMapping("/rolePlay.do")
	public ModelAndView getRolePlay() throws Exception{
		System.out.println(":: ==> getRolePlay() start...... ");
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/module/rolePlay.jsp");
		
		String returnRolePlay = moduleService.getRolePlay();
		modelAndView.addObject("returnRolePlay", returnRolePlay);
		
		System.out.println(":: ==> getRolePlay() end......");
				
		return modelAndView;
	}
}
