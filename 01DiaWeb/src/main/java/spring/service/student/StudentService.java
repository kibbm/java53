package spring.service.student;

import java.util.List;
import java.util.Map;

import spring.domain.Student;

public interface StudentService {

	//addStudent
	public int addStudent(Student student) throws Exception;
	
	//getStudent
	public Student getStudent(String id) throws Exception;
	
	//updateStudent
	public int updateStudent(Student student) throws Exception;
	
	//updateLeaveStudent
	public int updateLeaveStudent(Student student) throws Exception;
	
	//getStudentList
	public List<Student> getStudentList() throws Exception;
}
