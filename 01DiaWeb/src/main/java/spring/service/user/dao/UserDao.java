package spring.service.user.dao;

import java.util.List;

import spring.domain.User;

public interface UserDao {

	//회원가입
	public void addUser(User user) throws Exception;
	
	//개인 정보 조회
	public User getUser(String userId) throws Exception;
	
	//회원정보 수정
	public void updateUser(User user) throws Exception;	
	
	//회원탈퇴
	public int updateLeaveUser(User user) throws Exception;

	//updateStudent
	public int updateUserAdmin(User user) throws Exception;	
	
	//getStudentList
	public List<User> getUserList() throws Exception;
	
	//get RECID
	public int getRecId() throws Exception;
	
}
