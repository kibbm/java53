package spring.service.module.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.service.module.ModuleDao;

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

	@Override
	public String getList() throws Exception {
		String returnList = sqlSession.selectOne("ModuleMapper.getList");
		System.out.println(returnList);
		return returnList;
	}

	@Override
	public String getWriting() throws Exception {
		String returnWrt = sqlSession.selectOne("ModuleMapper.getWriting");
		System.out.println(returnWrt);
		return returnWrt;
	}

	@Override
	public String getSensegroup() throws Exception {
		String returnSensegroup = sqlSession.selectOne("ModuleMapper.getSensegroup");
		System.out.println(returnSensegroup);
		return returnSensegroup;
	}
	
}
