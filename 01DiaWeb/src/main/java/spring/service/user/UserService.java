package spring.service.user;

import java.util.List;

import spring.domain.User;

public interface UserService {

	//회원가입
	public void addUser(User user) throws Exception;
	
	//학생 개인 정보 조회
	public User getUser(String userId) throws Exception;
	
	//회원 정보 수정
	public void updateUser(User user) throws Exception;
	
	//회원탈퇴
	public int updateLeaveUser(User user) throws Exception;
	
	//updateUser
	public int updateUserAdmin(User user) throws Exception;
	
	//getUserList
	public List<User> getUserList() throws Exception;
	
	//get RECID
	public int getRecid() throws Exception;
}
