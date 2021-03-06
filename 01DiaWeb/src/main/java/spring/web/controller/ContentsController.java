package spring.web.controller;


import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import spring.domain.Contents;
import spring.domain.Module;
import spring.service.module.ContentsService;
import spring.service.module.ModuleService;



@Controller
public class ContentsController<AjaxResult> {
	
	//Field
	@Autowired
	@Qualifier("contentsService")
	private ContentsService contentsService;
	
	@Autowired
	@Qualifier("moduleService")
	private ModuleService moduleService;
	
	public ContentsController(){
		System.out.println("==> ContentsController default Constructor call......");
	}
	
	//Method
	
	//User :: 컨텐츠리스트
	@RequestMapping("/conList.do")
	public ModelAndView getConList(@ModelAttribute("Contents")Contents con) throws Exception{
	
		System.out.println("\n ====> getConList() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/module/contentsList.jsp");
		
		String conLevel = "lev1";
		List<Contents> conList = contentsService.getConList(conLevel);
		modelAndView.addObject("conList", conList);
		
		return modelAndView;
	}
	
	
	//======================================================================================
	//=======>>> 관리자 컨텐츠 만들기 페이지
	
	//컨텐츠 만들기 메인페이지 
	@RequestMapping("/makeConMain.do")
	public ModelAndView makeConMain() throws Exception{
	
		System.out.println("\n ====> makeConMain() start........");
		
		ModelAndView modelAndView = new ModelAndView();
		
		//컨텐츠 리스트 가지고 온 후 컨텐츠 만드는 메인페이지로 전환
		List<Contents> conList = contentsService.getAllCon();
		modelAndView.addObject("conList", conList);
		
		modelAndView.setViewName("/admin/makeConMain.jsp");
		
		return modelAndView;
	}

	
	//컨텐츠 유형 View
	@RequestMapping("/makeConView.do")
	public String makeConView(Model model) throws Exception{
	
		System.out.println("\n ====> makeConView() start........");

		//user session에서 레벨 가지고오기!!
		String conLevel = "lev1";
		int newOrder = contentsService.getConOrder(conLevel);
		
		model.addAttribute("conOrder", newOrder+1);
		
		return "forward:/admin/makeConView.jsp";
	}
	

	
	
	//컨텐츠 session에 담아서 makeMod로 이동
	@RequestMapping("/makeCon.do")
	public String makeCon(@ModelAttribute("contents") Contents contents, 
							HttpSession session, Model model) throws Exception{
	
		System.out.println("\n ====> makeCon() start........");
		System.out.println(contents);
		
		session.setAttribute("contents", contents);
		
		//model.addAttribute("contents", contents);
		
		return "forward:/admin/makeMod.jsp";
	}
	
	
	//모듈 만들기
	@RequestMapping("/makeMod.do")
	public @ResponseBody String makeMod(String jsonData,					
							HttpSession session, Model model) throws Exception{
	
		System.out.println("\n ====> makeMod() start........");
		System.out.println("\n jsonData====>"+jsonData);
		

		Contents con = (Contents)session.getAttribute("contents");
		System.out.println("Contents: "+con);

		JSONArray jsonArr = (JSONArray)JSONValue.parse(jsonData);
		System.out.println("전체 Data: "+ jsonArr);
		
		//contents insert 하면 => module insert
		int suc = contentsService.addCon(con);
		System.out.println("con insert 성공? "+suc);
		
		//추가한 컨텐츠 cNo 가져오기
		int cNo = contentsService.getCNo(con);
		System.out.println("contents insert 후 cNo 값: "+cNo);

		//int cNo=18;
		HashMap hashMap;
		
		JSONObject jsObj = new JSONObject();
		String modQuiz;
		Module module = new Module();		
		
		//int suc = 1;
		
		if(suc == 1){		

			//module insert			
			for(int i=0; i<jsonArr.size(); i++){
				System.out.println("\n"+i+"번째: "+jsonArr.get(i));
				
				hashMap= (HashMap)jsonArr.get(i);	
				
				//===> module객체  setter
				module.setConNo(cNo);
			
				String modType = hashMap.get("type").toString();
				module.setModType(modType);
				
				int modOrder = Integer.parseInt(hashMap.get("order").toString());			
				module.setModOrder(modOrder+1);

				//modQuiz setter
				if(hashMap.get("rubric") != ""){	
					jsObj.put("title", hashMap.get("title").toString());
					jsObj.put("rubric", hashMap.get("rubric").toString());
					jsObj.put("quiz", hashMap.get("quiz").toString());	
				}else{
					jsObj.put("title", hashMap.get("title").toString());
					jsObj.put("quiz", hashMap.get("quiz").toString());				
				}
				
				modQuiz = jsObj.toString();
				module.setModQuiz(modQuiz);
				
				
				System.out.println("module 객체==> "+module);	
				
				model.addAttribute("module", module);
				
				//module 객체 insert
				int comfirm = moduleService.addMod(module);
				System.out.println("module insert 성공? ==> "+comfirm);
				
				
			}//for
			
		}//if	
		return "redirect:/makeConMain.do";
	}

	
	
	//모듈 만들기
	@RequestMapping("/deleteCon.do")
	public String deleteCon(@RequestParam("conNo") int conNo,			
							HttpSession session, Model model) throws Exception{
		
		System.out.println("\n ====> deleteCon() start........");
		
		//해당 conNo 가진  module 삭제
		int suc = moduleService.removeMod(conNo);
		
		//int suc = 1;
		if(suc == 1){
			System.out.println("Module delte 성공!!");		

			
			//해당 conNo 가진  contents 삭제
			int confirm = contentsService.removeCon(conNo);
			
			//int confirm = 1;
					
			if(confirm == 1){
				System.out.println("Contents delte 성공!!");		
			}
		}
		return "redirect:/makeConMain.do";	
	}
	
	
	
	
	

	
	
	
	
	
	
	//모듈 미리보기 데이터 전달
	@RequestMapping("/makePrev.do")
	public String modPrev(String jsonData,					
							HttpSession session, Model model) throws Exception{
		
		System.out.println("\n ====> modPrev() start........");
	
		JSONArray jsonArr = (JSONArray)JSONValue.parse(jsonData);
		System.out.println("전체 Data: "+ jsonArr);
		
		HashMap hasMap;
		
		JSONObject jsObj = new JSONObject();
		String modQuiz;
		Module module = new Module();		
		
		int suc = 1;
		
		if(suc == 1){		

			//module insert			
			for(int i=0; i<jsonArr.size(); i++){
				System.out.println("\n"+i+"번째: "+jsonArr.get(i));
				
				hasMap= (HashMap)jsonArr.get(i);	
				
				//===> module객체  setter
				//module.setConNo(cNo);
				module.setConNo(2);
			
				String modType = hasMap.get("type").toString();
				module.setModType(modType);
				
				int modOrder = Integer.parseInt(hasMap.get("order").toString());			
				module.setModOrder(modOrder+1);

				//modQuiz setter
				if(hasMap.get("rubric") != ""){	
					jsObj.put("title", hasMap.get("title").toString());
					jsObj.put("rubric", hasMap.get("rubric").toString());
					jsObj.put("quiz", hasMap.get("quiz").toString());	
				}else{
					jsObj.put("title", hasMap.get("title").toString());
					jsObj.put("quiz", hasMap.get("quiz").toString());				
				}
				
				modQuiz = jsObj.toString();
				module.setModQuiz(modQuiz);
				
				System.out.println("module 객체==> "+module);	
				model.addAttribute("module", module);

				
			}//for

			
		}//if	
		//"redirect:/modPreview.do"
		
		return "forward:/admin/modPreview.jsp";	
	}

	//모듈 미리보기
	@RequestMapping("/modPreview.do")
	public String modPreview(@ModelAttribute("module") Module module, 
								HttpSession session, Model model) throws Exception{
		
		
		System.out.println("\n ====> modPreview() start........");
		System.out.println("modPreview: "+module);
			
		String returnWrt = moduleService.getWriting(1, 1);
		
		model.addAttribute("returnWrt", returnWrt);
		
	
		return "forward:/admin/modPreview.jsp";	
	}	
	
}
