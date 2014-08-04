package spring.service.module;

import java.util.List;

import spring.domain.Contents;

public interface ContentsService {
	
	//contents list가져오기		
	public List<Contents> getConList(String conLevel) throws Exception;		
}