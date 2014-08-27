package spring.service.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.User;

@Repository("userDaoImpl")
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
	public void addUser(User user) throws Exception {
		sqlSession.insert("UserMapper.addUser", user);
	}

	@Override
	public User getUser(String userId) throws Exception {
		return sqlSession.selectOne("UserMapper.getUser", userId);
	}

	@Override
	public void updateUser(User user) throws Exception {		
		sqlSession.update("UserMapper.updateUser", user);
	}

	@Override
	public int updateUserforAdmin(User user) throws Exception {
		System.out.println("Dao updateUserforAdmin user : " + user);		
		return sqlSession.update("UserMapper.updateUserforAdmin", user);
	}

	@Override
	public List<User> getUserList() throws Exception {
		System.out.println("DaoImpl/::==" + sqlSession.selectList("UserMapper.getUserList"));
		return sqlSession.selectList("UserMapper.getUserList");
	}

	@Override
	public int idcheck(String userId) throws Exception {
		int count = 1;
		User user = sqlSession.selectOne("UserMapper.idCheck", userId);
		if(user == null) {
			count = 0;
		}
		return count;
	}


}
