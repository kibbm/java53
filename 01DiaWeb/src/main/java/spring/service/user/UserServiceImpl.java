package spring.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.domain.User;
import spring.service.user.dao.UserDao;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {

	@Autowired
	@Qualifier("userDaoImpl")
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
	public void addUser(User user) throws Exception {
		userDao.addUser(user);
	}

	@Override
	public User getUser(String userId) throws Exception {
		return userDao.getUser(userId);
	}

	@Override
	public void updateUser(User user) throws Exception {
		userDao.updateUser(user);
	}

	@Override
	public int updateLeaveUser(User user) throws Exception {		
		return userDao.updateLeaveUser(user);
	}
	
	@Override
	public int updateUserAdmin(User user) throws Exception {
		return userDao.updateUserAdmin(user);
	}

	@Override
	public List<User> getUserList() throws Exception {
		return userDao.getUserList();
	}

	@Override
	public int getRecid() throws Exception {
		return userDao.getRecid();
	}

}
