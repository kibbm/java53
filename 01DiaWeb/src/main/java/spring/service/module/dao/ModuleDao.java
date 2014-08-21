package spring.service.module.dao;

import java.util.Map;

import spring.domain.Module;


public interface ModuleDao {
	
	//module 가지고오기
	public String getModule(Map<String, Object> map) throws Exception;

	//module insert
	public int addMod(Module module) throws Exception;	

}
