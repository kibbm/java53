package spring.web.module;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.domain.Contents;
import spring.service.module.ContentsService;
import spring.service.module.ModuleService;


@Controller
public class ContentsController {
	
	//Field
	@Autowired
	@Qualifier("contentsService")
	private ContentsService contentsService;
	
	public ContentsController(){
		System.out.println("==> ContentsController default Constructor call......");
	}
	
	@RequestMapping("/conList.do")
	public ModelAndView getConList() throws Exception{
	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/module/contentsList.jsp");
		
		List<Contents> conList = contentsService.getConList();
		modelAndView.addObject("conList", conList);
		
		return modelAndView;
	}
	
/*	@RequestMapping("/writing.do")
	public String getWriting(Model model) throws Exception{
		String returnWrt = moduleService.getWriting();
		model.addAttribute("returnWrt");
		
		return "/module/writing.jsp";
	}*/
	
	
}
