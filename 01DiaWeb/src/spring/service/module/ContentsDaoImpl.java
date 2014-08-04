package spring.service.module;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.Contents;
import spring.service.module.ContentsDao;
import spring.service.module.ModuleDao;

@Repository("contentsDao")
public class ContentsDaoImpl implements ContentsDao{

	//field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public void getSqlSession(SqlSession sqlSession) {
		System.out.println("::" + getClass() + ".setSession() call....");
		this.sqlSession = sqlSession;
	}

	//constructor
	public ContentsDaoImpl() {
		System.out.println("::" + getClass() + "default Constructor Call...");
	}

	//method
	//contents list가져오기	
	@Override
	public List<Contents> getConList(String conLevel) throws Exception {
		return sqlSession.selectList("ContentsMapper.getConList", conLevel);
	}
	

}
