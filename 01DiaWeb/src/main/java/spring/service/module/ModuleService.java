package spring.service.module;



public interface ModuleService {

	//Writing ���

	public String getWriting(int conIndex, String modOrder) throws Exception;

	//Words List
	public String getWords(int conIndex, String modOrder) throws Exception;	
	
	//sensegroup List ���
	public String getSensegroup(int conIndex, String modOrder) throws Exception;
			
	//role play ���������
	public String getRoleplay(int conIndex, String modOrder) throws Exception;
}