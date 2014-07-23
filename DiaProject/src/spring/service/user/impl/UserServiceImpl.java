package spring.service.user.impl;

import java.sql.Array;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.service.user.UserDao;
import spring.service.user.UserService;

/*
 * FileName : UserServiceImpl13.java
 * �� ȸ������ ���� �����Ͻ� ������ �߻�ȭ�� interface ����
 * �� Component : interface �� Encapsulation �� ���밡�� �� library
 */
@Service("userService")
public class UserServiceImpl implements UserService {
	///Field
	@Autowired
	@Qualifier("userDao")
	UserDao userDao;	

	///Method
	@Override
	public String getList() throws Exception {
		return userDao.getList();
	}

	public String[]  getArrayList() throws Exception {
		
		String list = userDao.getList();
		String[] arrayList = list.split(" ");

		return arrayList;
	}

	public void setUserDao(UserDao userDao) {
		System.out.println("::"+getClass()+".setUserDao  Call.....");
		this.userDao = userDao;
	}
	
	///Constructor
	public UserServiceImpl() {
		System.out.println("::"+getClass()+" default Constructor Call.....");
	}


}