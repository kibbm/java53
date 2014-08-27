package spring.service.user.dao;

import java.util.List;

import spring.domain.User;

public interface UserDao {

	//addUser
	public void addUser(User user) throws Exception;
	
	//getUser
	public User getUser(String userId) throws Exception;
	
	//updateUser
	public void updateUser(User user) throws Exception;	
	
	//updateStudent
	public int updateUserforAdmin(User user) throws Exception;	
	
	//getStudentList
	public List<User> getUserList() throws Exception;
	
	//idDuplicationCheck
	public int idcheck(String userId) throws Exception;
		
}
