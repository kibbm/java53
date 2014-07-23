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
 * ㅇ 데이터베이스와 직접적인 통신을 담당하는 퍼시스턴스 계층을 담당할 UserDao 인터페이스 구현 
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
	//단어 List 가지고오기
	@Override
	public String getList() throws Exception {
		
		String returnList = sqlSession.selectOne("UserMapper.getList");
		
		System.out.println(returnList);
	
		return returnList; 
	}

}//end of class