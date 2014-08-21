package spring.service.module.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.Contents;

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
	//User :: contents list가져오기	
	@Override
	public List<Contents> getConList(String conLevel) throws Exception {
		return sqlSession.selectList("ContentsMapper.getConList", conLevel);
	}
	
	
	//Admin :: 컨텐츠만들기 페이지에서 모든 컨텐츠 가지고 오기
	@Override
	public List<Contents> getAllCon() throws Exception {
		return sqlSession.selectList("ContentsMapper.getAllCon");
	}

	//Admin :: 레벨에 따른 컨텐츠 갯수
	@Override
	public int getConCount(String conLevel) throws Exception {
		return sqlSession.selectOne("ContentsMapper.getConCount", conLevel);
	}

	//Admin:: Contents insert
	@Override
	public int addCon(Contents con) throws Exception {
		return sqlSession.insert("ContentsMapper.addCon", con);
	}

	//Admin:: module insert에 필요한 cNo 값 가져오기
	@Override
	public int getCNo(Contents con) throws Exception {
		return sqlSession.selectOne("ContentsMapper.getCNo", con);
	}	
	

}
