package spring.service.module;

import java.util.List;

import spring.domain.Contents;

public interface ContentsService {
	
	//������ ��� ������ ����
	public List<Contents> getConList() throws Exception;
		
}