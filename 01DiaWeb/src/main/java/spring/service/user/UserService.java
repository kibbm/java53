package spring.service.user;

import java.util.List;

import spring.domain.User;

public interface UserService {

	//addUser
	public void addUser(User user) throws Exception;
	
	//getUser
	public User getUser(String userId) throws Exception;
	
	//updateUser
	public void updateUser(User user) throws Exception;
	
	//updateUserAdmin
	public int updateUserforAdmin(User user) throws Exception;
	
	//getUserList
	public List<User> getUserList() throws Exception;
	
	//idDuplicationCheck
	public int  idcheck(String userId) throws Exception;
}
