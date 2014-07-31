package spring.service.module;


public interface ModuleDao {

	public String getList() throws Exception;
	
	//Writing 모듈
	public String getWriting() throws Exception;
	
	//Sensegroup 모듈	
	public String getSensegroup() throws Exception;
}
