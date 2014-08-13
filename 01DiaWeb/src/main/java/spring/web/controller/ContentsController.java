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
	//User :: 컨텐츠리스트
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
	
	
	//=============> 관리자 컨텐츠 만들기 페이지
	
	//컨텐츠 만들기 메인페이지                 //login 에서 makeConView 로 페이지 전환 (login페이지 jps로 바뀌면 필요없어짐)
	@RequestMapping("/makeConView.do")
	public ModelAndView makeConMain() throws Exception{
	
		System.out.println("====> makeConMain() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		
		//컨텐츠 리스트 가지고 온 후 컨텐츠 만드는 메인페이지로 전환
		List<Contents> conList = contentsService.getAllCon();
		modelAndView.addObject("conList", conList);
		
		
		modelAndView.setViewName("/admin/makeConView.jsp");

		
		return modelAndView;
	}
	
	
	//컨텐츠 유형
	@RequestMapping("/makeCon.do")
	public ModelAndView makeCon() throws Exception{
	
		System.out.println("====> makeCon() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/admin/makeMod.jsp");
		
		return modelAndView;
	}
	
	//모듈 만들기
	@RequestMapping("/makeMod.do")
	public ModelAndView makeMod() throws Exception{
	
		System.out.println("====> makeMod() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/admin/makeConView.do");
		
		return modelAndView;
	}	

	
}
