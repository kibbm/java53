package spring.web.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	//Method
	//User :: 而⑦뀗痢좊━�ㅽ듃
	@RequestMapping("/conList.do")
	public ModelAndView getConList(@ModelAttribute("Contents")Contents con) throws Exception{
	
		System.out.println("====> getConList() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/module/contentsList.jsp");
		
		String conLevel = "초";
		List<Contents> conList = contentsService.getConList(conLevel);
		modelAndView.addObject("conList", conList);
		
		return modelAndView;
	}
	
	
	//=============> 愿�━��而⑦뀗痢�留뚮뱾湲��섏씠吏�
	
	//而⑦뀗痢�留뚮뱾湲�硫붿씤�섏씠吏�                //login �먯꽌 makeConView 濡��섏씠吏��꾪솚 (login�섏씠吏�jps濡�諛붾�硫��꾩슂�놁뼱吏�
	@RequestMapping("/makeConView.do")
	public ModelAndView makeConMain() throws Exception{
	
		System.out.println("====> makeConMain() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		
		//而⑦뀗痢�由ъ뒪��媛��怨�����而⑦뀗痢�留뚮뱶��硫붿씤�섏씠吏�줈 �꾪솚
		List<Contents> conList = contentsService.getAllCon();
		modelAndView.addObject("conList", conList);
		
		
		modelAndView.setViewName("/admin/makeConView.jsp");

		
		return modelAndView;
	}
	
	
	//而⑦뀗痢��좏삎
	@RequestMapping("/makeCon.do")
	public ModelAndView makeCon() throws Exception{
	
		System.out.println("====> makeCon() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/admin/makeMod.jsp");
		
		return modelAndView;
	}
	
	//紐⑤뱢 留뚮뱾湲�
	@RequestMapping("/makeMod.do")
	public ModelAndView makeMod() throws Exception{
	
		System.out.println("====> makeMod() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/admin/makeConView.do");
		
		return modelAndView;
	}	

	
}
