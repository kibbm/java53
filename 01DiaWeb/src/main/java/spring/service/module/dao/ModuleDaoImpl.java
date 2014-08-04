package spring.service.module.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.Module;

@Repository("moduleDao")
public class ModuleDaoImpl implements ModuleDao{

	//field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public void getSqlSession(SqlSession sqlSession) {
		System.out.println("::" + getClass() + ".setSession() call....");
		this.sqlSession = sqlSession;
	}

	//constructor
	public ModuleDaoImpl() {
		System.out.println("::" + getClass() + "default Constructor Call...");
	}


	//module 가지고오기
	@Override
	public String getModule(Map<String, Object> map) throws Exception {
		String modResult = sqlSession.selectOne("ModuleMapper.getModule", map);
		System.out.println(modResult);
		return modResult;
	}
	

}
