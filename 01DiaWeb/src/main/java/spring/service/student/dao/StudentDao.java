package spring.service.student.dao;

import spring.domain.Student;

public interface StudentDao {

	//회원가입
	public int addStudent(Student student) throws Exception;
	
	//학생 개인 정보 조회
	public Student getStudent(String id) throws Exception;
	
	//회원정보 수정
	public int updateStudent(Student student) throws Exception;	
	
	//회원탈퇴
	public int updateLeaveStudent(Student student) throws Exception;
}
