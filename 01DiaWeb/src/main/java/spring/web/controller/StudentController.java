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
import org.springframework.web.bind.annotation.RequestParam;
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
	
	/*//add user
	@RequestMapping("/addStudent.do")
	public ModelAndView addStudent(@ModelAttribute("student") Student student) throws Exception{
		
		System.out.println("\n::addStudent() start...");
		int result = studentService.addStudent(student);
		
		System.out.println("\n::addStudent()" + result);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/student/loginView.jsp");
		
		return modelAndView;
	}*/
	
	/*//find one user 
	@RequestMapping("/getStudent.do")
	public ModelAndView getStudent(@ModelAttribute("student") Student student) throws Exception{
		
		System.out.println("\n::getStudent() start...");
		Student studentdb = studentService.getStudent(student.getUserId());
		System.out.println("::studentdb : " + studentdb);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/student/getStudent.jsp");
		
		modelAndView.addObject("student", student);
		return modelAndView;
	}*/
			
	/*//View user info after update by user
	@RequestMapping("/updateStudentView.do")
	public ModelAndView updateStudentView(@RequestParam("id") String id,
			@ModelAttribute("student") Student student) throws Exception{
		
		System.out.println("\n::updateStudentView start...");
		Student studentdb = studentService.getStudent(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/student/updateStudent.jsp");
		modelAndView.addObject("student", studentdb);
		
		return modelAndView;
	}*/
	
	/*//update when EU terminated our site as 'delete'	
	@RequestMapping("/updateLeaveStudent.do")
	public ModelAndView updateLeaveStudent(@ModelAttribute("student") Student student,
			HttpServletRequest request,
			HttpSession session) throws Exception{
		 
		System.out.println("\n::updateLeaveStudent() start...");
		
		int result = studentService.updateStudent(student);
		String sessionId = ((Student) session.getAttribute("student")).getUserId();
		
		if(sessionId.equals(student.getUserId())){
			session.setAttribute("student", student);
		}
		//session cut
		session.invalidate();
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/index.jsp");
		
		return modelAndView;		
	}*/
	
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
				
				//�덈뒗 �좊쭔 泥섎━.
				//recid = Integer.parseInt(String.valueOf(Math.round((int)userMap.get("recid"))));//double->int
				int recid = (Integer)userMap.get("recid");
				
				System.out.println(recid + ", " + userMap.get("email") + ", " + userMap.get("phone") + ", " +userMap.get("phone") + ", " +userMap.get("level") + ", "+ userMap.get("flag"));
				//vo���닿린.. where recid
				
				student.setRecid(recid);
				student.setEmail((String) userMap.get("email"));
				student.setPhone((String)userMap.get("phone"));
				student.setAddr((String) userMap.get("addr"));
				student.setLevel((String)userMap.get("level"));
				student.setFlag((boolean) userMap.get("flag"));
			}			
			
						
			
			int result = studentService.updateStudent(student);
			System.out.println("result : " + result);
			/* �몄뀡��臾댁“嫄�admin�댁뼱����..!
			 * String sessionId = ((Student) session.getAttribute("student")).getUserId();
			
			if(sessionId.equals(student.getUserId())){
				session.setAttribute("student", student);
			}*/
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("/student/mastertoDetail.html");
			//modelAndView.setViewName("/getStudent.do?id=" + student.getUserId());
			
			return modelAndView;		
		}
	
		/*//
		@RequestMapping("/updateStudentforAdminData.do")
		public ModelAndView updateStudentData(HttpServletRequest request, HttpSession session)
				throws Exception{
			
			System.out.println("\n:: updateStudentforAdminData.do start...");
			
			List<Student> list = studentService.getStudentList();
			//String jsonString = "{\"records\" :" + list +"}";		
			String jsonString = "{\"total\":" + list.size() + ", \"records\" :" + list +"}";
			//System.out.println("\n :: jsonString : " + jsonString);
			
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("jsonString", jsonString);
			modelAndView.setViewName("student/listStudentData.jsp");
					
			return modelAndView;		 
		}*/
		//////////////////////////////
		
		
	@RequestMapping("/listStudent.do")
	public ModelAndView listUser(HttpServletRequest request, HttpSession session)
			throws Exception{
		
		System.out.println("\n:: listStudent.do start...");
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("student/mastertoDetail.html");
		//modelAndView.setViewName("student/listStudent.jsp");
		
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
