package spring.service.module.dao;

import java.util.List;

import spring.domain.Contents;


public interface ContentsDao {
	
	//contents list가져오기	
	public List<Contents> getConList(String conLevel) throws Exception;
	
}
