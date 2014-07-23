package spring.service.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.User;
import spring.service.user.UserDao;

/* 
 * FileName : UserDaoImpl14.java  ( Data Access Object ) 
 * �� �����ͺ��̽��� �������� ����� ����ϴ� �۽ý��Ͻ� ������ ����� UserDao �������̽� ���� 
*/ 
@Repository("userDao")
public class UserDaoImpl implements UserDao{

	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("::"+getClass()+".setSqlSession()  Call.....");
		this.sqlSession = sqlSession;
	}

	///Constructor
	public UserDaoImpl() {
		System.out.println("::"+getClass()+" default Constructor Call.....");
	}
	
	
	///Method	
	//�ܾ� List ���������
	@Override
	public String getList() throws Exception {
		
		String returnList = sqlSession.selectOne("UserMapper.getList");
		
		System.out.println(returnList);
	
		return returnList; 
	}

}//end of class