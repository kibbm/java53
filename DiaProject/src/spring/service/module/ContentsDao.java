package spring.service.module;

import java.util.List;

import spring.domain.Contents;


public interface ContentsDao {
	
	//컨텐츠 목록 가지고 오기
	public List<Contents> getConList() throws Exception;
	
}
