package spring.service.module.dao;

import java.util.Map;

import spring.domain.Module;


public interface ModuleDao {
	
	//module
	public String getModule(Map<String, Object> map) throws Exception;

}
