package spring.web.module;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		/*String[] arrayList= moduleService.getList();
		modelAndView.addObject("arrayList", arrayList);*/
		
		return modelAndView;
	}
	
	

	@RequestMapping("/writing.do")
	public ModelAndView getWriting() throws Exception{
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/module/writing.jsp");
		
		String returnWrt = moduleService.getWriting();
		modelAndView.addObject("returnWrt", returnWrt);

		
		/*String[] arrayList= moduleService.getList();
		modelAndView.addObject("arrayList", arrayList);*/
		
		return modelAndView;
	}
	
	
	@RequestMapping("/sensegroup.do")
	public ModelAndView getSensegroup() throws Exception{
		System.out.println(":: ==> getSensegroup() start...... ");
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/module/sensegroup.jsp");
		
		String returnSensegroup = moduleService.getSensegroup();
		modelAndView.addObject("returnSensegroup", returnSensegroup);
		
		System.out.println(":: ==> getSensegroup() end......");
		
		return modelAndView;
	}
	
	
}
