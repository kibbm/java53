package spring.service.user;

import java.util.List;

import spring.domain.User;

public interface UserService {

	//updateUser
	public int updateUser(User user) throws Exception;
	
	//getUserList
	public List<User> getUserList() throws Exception;
}
