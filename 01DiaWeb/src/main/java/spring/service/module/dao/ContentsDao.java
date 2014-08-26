package spring.service.module.dao;

import java.util.List;

import spring.domain.Contents;


public interface ContentsDao {
	
	//User :: contents list가져오기	
	public List<Contents> getConList(String conLevel) throws Exception;
	
	//Admin :: 컨텐츠만들기 페이지에서 모든 컨텐츠 가지고 오기
	public List<Contents> getAllCon() throws Exception;		
	
	//Admin :: 레벨에 따른 컨텐츠 갯수
	public int getConOrder(String conLevel) throws Exception;	
	
	//Admin:: Contents insert
	public int addCon(Contents con) throws Exception;
	
	//Admin:: module insert에 필요한 cNo 값 가져오기
	public int getCNo(Contents con) throws Exception;
	
	//Admin:: contents 삭제
	public int removeCon(int conNo) throws Exception;
}
