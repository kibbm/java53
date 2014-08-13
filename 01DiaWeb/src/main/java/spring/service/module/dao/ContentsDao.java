package spring.service.module.dao;

import java.util.List;

import spring.domain.Contents;


public interface ContentsDao {
	
	//User :: contents list가져오기	
	public List<Contents> getConList(String conLevel) throws Exception;
	
	//Admin :: 컨텐츠만들기 페이지에서 모든 컨텐츠 가지고 오기
	public List<Contents> getAllCon() throws Exception;		
	
}
