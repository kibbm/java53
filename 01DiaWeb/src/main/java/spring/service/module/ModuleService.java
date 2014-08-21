package spring.service.module;

import spring.domain.Module;



public interface ModuleService {

	//Writing ���
	public String getWriting(int conNo, int modOrder) throws Exception;

	//Words List
	public String getWords(int conNo, int modOrder) throws Exception;	
	
	//sensegroup List ���
	public String getSensegroup(int conNo, int modOrder) throws Exception;
			
	//role play ���������
	public String getRoleplay(int conNo, int modOrder) throws Exception;
	
	//module insert
	public int addMod(Module module) throws Exception;
}