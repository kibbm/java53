package spring.service.student.dao;

import java.util.List;

import spring.domain.Student;

public interface StudentDao {

	//�뚯썝媛�엯
	public int addStudent(Student student) throws Exception;
	
	//�숈깮 媛쒖씤 �뺣낫 議고쉶
	public Student getStudent(String id) throws Exception;
	
	//�뚯썝�뺣낫 �섏젙
	public int updateStudent(Student student) throws Exception;	
	
	//�뚯썝�덊눜
	public int updateLeaveStudent(Student student) throws Exception;
	
	//getUserList
	public List<Student> getStudentList() throws Exception;
	
}
