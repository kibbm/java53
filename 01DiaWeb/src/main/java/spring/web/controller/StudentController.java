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

import spring.domain.Student;
import spring.service.student.StudentService;

import com.google.gson.Gson;

@Controller
public class StudentController {

	@Autowired
	@Qualifier("studentService")
	private StudentService studentService;

	//constructor
	public StudentController() {
		System.out.println("==> studentController default Constractor call....");
	}

	//update user info by user
		@RequestMapping("/updateStudentforAdmin.do")
		public ModelAndView updateStudent(@ModelAttribute("student") Student student,
				String list,
				HttpServletRequest request,
				HttpSession session) throws Exception{
			
			System.out.println("\n::updateStudentforAdmin() start...");
			
			Gson gson = new Gson();
			ArrayList itemList = gson.fromJson(list, ArrayList.class);			
			Map userMap;
						
			
			for (Object item : itemList) {
				userMap = (Map)item;
				System.out.println(userMap.get("recid") + "," + userMap.get("email"));
				
				//?????
				//recid = Integer.parseInt(String.valueOf(Math.round((int)userMap.get("recid"))));//double->int
				int recid = (Integer)userMap.get("recid");
				
				//System.out.println(recid + ", " + userMap.get("email") + ", " + userMap.get("phone") + ", " +userMap.get("phone") + ", " +userMap.get("level") + ", "+ userMap.get("flag"));
				//vo. where recid
				
				student.setRecid(recid);
				student.setEmail((String) userMap.get("email"));
				student.setPhone((String)userMap.get("phone"));
				student.setAddr((String) userMap.get("addr"));
				student.setLevel((String)userMap.get("level"));
				student.setFlag((boolean) userMap.get("flag"));
			}			
			
						
			
			int result = studentService.updateStudent(student);
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
		
	@RequestMapping("/listStudent.do")
	public ModelAndView listUser(HttpServletRequest request, HttpSession session)
			throws Exception{
		
		System.out.println("\n:: listStudent.do start...");
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("student/mastertoDetail.html");
		
		return modelAndView;	
	}
	
	@RequestMapping("/listStudentData.do")
	public ModelAndView listUserData(HttpServletRequest request, HttpSession session)
			throws Exception{
		
		System.out.println("\n:: listUserData.do start...");
		
		List<Student> list = studentService.getStudentList();
		//String jsonString = "{\"records\" :" + list +"}";		
		String jsonString = "{\"total\":" + list.size() + ", \"records\" :" + list +"}";
		//System.out.println("\n :: jsonString : " + jsonString);
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("jsonString", jsonString);
		modelAndView.setViewName("student/listStudentData.jsp");
				
		return modelAndView;		 
	}
	
}
