package spring.service.module;

import java.util.List;

import spring.domain.Contents;


public interface ContentsDao {
	
	//������ ��� ������ ����
	public List<Contents> getConList() throws Exception;
	
}
