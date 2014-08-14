package spring.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.domain.User;
import spring.service.user.dao.UserDao;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	@Qualifier("userDao")
	private UserDao userDao; 
	
	//set	
	public void setUserDao(UserDao userDao) {
		System.out.println("::" + getClass() + ".setUserDao call...");
		this.userDao = userDao;
	}
	
	//constructor
	public UserServiceImpl() {
		System.out.println("::" + getClass() + "default constructor start..");	}

	@Override
	public int updateUserforAdmin(User user) throws Exception {
		return userDao.updateUserforAdmin(user);
	}

	@Override
	public List<User> getUserList() throws Exception {
		return userDao.getUserList();
	}

}
