package spring.service.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	//setter
	public void setSqlSession(SqlSession sqlSession){
		System.out.println("::" + getClass() + ".setSqlSession() call...");
		this.sqlSession = sqlSession;
	}
	
	//constructor	
	public UserDaoImpl() {
		System.out.println("::" + getClass() + "default constructor start...");
	}



	@Override
	public int updateUserforAdmin(User user) throws Exception {		
		return sqlSession.update("UserMapper.updateUser", user);
	}


	@Override
	public List<User> getUserList() throws Exception {
		System.out.println("DaoImpl/::==" + sqlSession.selectList("UserMapper.getUserList"));
		return sqlSession.selectList("UserMapper.getUserList");
	}

}
