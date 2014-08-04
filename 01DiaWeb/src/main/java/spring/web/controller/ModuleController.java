package spring.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.domain.Contents;
import spring.domain.Module;
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
	
	@RequestMapping("/writing.do")
	public ModelAndView getWriting(@RequestParam("conIndex") int conIndex,
									@RequestParam("modOrder") String modOrder) throws Exception{
	
		
		ModelAndView modelAndView = new ModelAndView();
		
		String returnWrt = moduleService.getWriting(conIndex, modOrder);
		modelAndView.addObject("returnWrt", returnWrt);
		modelAndView.addObject("conIndex", conIndex);
		
		modelAndView.setViewName("/module/writing.jsp");		
		return modelAndView;
	}
	
	@RequestMapping("/words.do")
	public ModelAndView getList(@RequestParam("conIndex") int conIndex,
									@RequestParam("modOrder") String modOrder) throws Exception{

	
		ModelAndView modelAndView = new ModelAndView();
			
		
		String returnList = moduleService.getWords(conIndex, modOrder);
		modelAndView.addObject("returnList", returnList);
		modelAndView.addObject("conIndex", conIndex);
		
		modelAndView.setViewName("/module/words.jsp");	
			
		return modelAndView;
	}
	
	@RequestMapping("/sensegroup.do")
	public ModelAndView getSensegroup(@RequestParam("conIndex") int conIndex,
										@RequestParam("modOrder") String modOrder) throws Exception{
		
		System.out.println(":: ==> getSensegroup() start...... ");
	
		ModelAndView modelAndView = new ModelAndView();
			
		String returnSensegroup = moduleService.getSensegroup(conIndex, modOrder);
		modelAndView.addObject("returnSensegroup", returnSensegroup);
		modelAndView.addObject("conIndex", conIndex);
		
		modelAndView.setViewName("/module/sensegroup.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping("/roleplay.do")
	public ModelAndView getRolePlay(@RequestParam("conIndex") int conIndex,
									@RequestParam("modOrder") String modOrder) throws Exception{
		System.out.println(":: ==> getRolePlay() start...... ");
	
		ModelAndView modelAndView = new ModelAndView();	
		
		String returnRolePlay = moduleService.getRoleplay(conIndex, modOrder);
		modelAndView.addObject("returnRolePlay", returnRolePlay);
		modelAndView.addObject("conIndex", conIndex);
		
		modelAndView.setViewName("/module/rolePlay.jsp");
				
		return modelAndView;
	}

	
	@RequestMapping("/writingRect.do")
	public ModelAndView getWritingRect(@RequestParam("conIndex") int conIndex,
										@RequestParam("modOrder") String modOrder,
										@ModelAttribute("Contents")Contents con) throws Exception{
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/module/writingRect.jsp");
		
		String returnWrt = moduleService.getWriting(conIndex, modOrder);
		modelAndView.addObject("returnWrt", returnWrt);
		
		return modelAndView;
	}
	
}
