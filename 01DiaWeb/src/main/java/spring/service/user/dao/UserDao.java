package spring.service.user.dao;

import java.util.List;

import spring.domain.User;

public interface UserDao {

	
	//updateUserforAdmin
	public int updateUserforAdmin(User user) throws Exception;	
	
	
	
	//getStudentList
	public List<User> getUserList() throws Exception;
	
}
