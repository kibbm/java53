package spring.service.user.dao;

import java.util.List;

import spring.domain.User;

public interface UserDao {

	
	//updateStudent
	public int updateUser(User user) throws Exception;	
	
	
	//getStudentList
	public List<User> getUserList() throws Exception;
	
}
