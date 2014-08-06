package spring.web.controller;

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

@Controller
public class StudentController {

	@Autowired
	@Qualifier("studentService")
	private StudentService studentService;

	//constructor
	public StudentController() {
		System.out.println("==> studentController default Constractor call....");
	}
	
	//회원가입
	@RequestMapping("/addStudent.do")
	public ModelAndView addStudent(@ModelAttribute("student") Student student) throws Exception{
		
		System.out.println("\n::addStudent() start...");
		int result = studentService.addStudent(student);
		
		System.out.println("\n::addStudent()" + result);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/student/loginView.jsp");
		
		return modelAndView;
	}
	
	//학생 개인 정보 조회 
	@RequestMapping("/getStudent.do")
	public ModelAndView getStudent(@ModelAttribute("student") Student student) throws Exception{
		
		System.out.println("\n::getStudent() start...");
		Student studentdb = studentService.getStudent(student.getUserId());
		System.out.println("::studentdb : " + studentdb);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/student/getStudent.jsp");
		
		modelAndView.addObject("student", student);
		return modelAndView;
	}
	
	//학생  정보 수정
	@RequestMapping("/updateStudent.do")
	public ModelAndView updateStudent(@ModelAttribute("student") Student student,
			HttpServletRequest request,
			HttpSession session) throws Exception{
		 
		System.out.println("\n::updateStudent() start...");
		
		int result = studentService.updateStudent(student);
		String sessionId = ((Student) session.getAttribute("student")).getUserId();
		
		if(sessionId.equals(student.getUserId())){
			session.setAttribute("student", student);
		}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/getStudent.do?id=" + student.getUserId());
		
		return modelAndView;		
	}
	
	//학생  정보 수정 view
	@RequestMapping("/updateStudentView.do")
	public ModelAndView updateStudentView(@RequestParam("id") String id,
			@ModelAttribute("student") Student student) throws Exception{
		
		System.out.println("\n::updateStudentView start...");
		Student studentdb = studentService.getStudent(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/student/updateStudent.jsp");
		modelAndView.addObject("student", studentdb);
		
		return modelAndView;
	}
	
	//회원탈퇴	
	@RequestMapping("/updateLeaveStudent.do")
	public ModelAndView updateLeaveStudent(@ModelAttribute("student") Student student,
			HttpServletRequest request,
			HttpSession session) throws Exception{
		 
		System.out.println("\n::updateLeaveStudent() start...회원 탈퇴");
		
		int result = studentService.updateStudent(student);
		String sessionId = ((Student) session.getAttribute("student")).getUserId();
		
		if(sessionId.equals(student.getUserId())){
			session.setAttribute("student", student);
		}
		//세션 끊기
		session.invalidate();
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/index.jsp");
		
		return modelAndView;		
	}
	
/*	@RequestMapping("/updateLeaveStudentView.do")
	public ModelAndView updateStudentView(@RequestParam("id") String id,
			@ModelAttribute("student") Student student) throws Exception{
		
		System.out.println("\n::updateStudentView start...");
		Student studentdb = studentService.getStudent(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/student/updateStudent.jsp");
		modelAndView.addObject("student", studentdb);
		
		return modelAndView;
	}*/

	
}
