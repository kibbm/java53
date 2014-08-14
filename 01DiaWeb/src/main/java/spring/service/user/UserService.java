package spring.service.user;

import java.util.List;

import spring.domain.User;

public interface UserService {

	//updateUserforAdmin
	public int updateUserforAdmin(User user) throws Exception;
	
	//getUserList
	public List<User> getUserList() throws Exception;
}
