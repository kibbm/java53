package spring.service.module;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.domain.Module;
import spring.service.module.dao.ModuleDao;

@Service("moduleService")
public class ModuleServiceImpl implements ModuleService {
	///Field
	@Autowired
	@Qualifier("moduleDao")
	ModuleDao moduleDao;	
	
	///Constructor
	public ModuleServiceImpl() {
		System.out.println("::"+getClass()+" default Constructor Call.....");
	}
	

	public void setModuleDao(ModuleDao ModuleDao) {
		System.out.println("::"+getClass()+".setModuleDao  Call.....");
		this.moduleDao = ModuleDao;
	}

	
	///Method
	@Override
	public String getWriting(int conNo, int modOrder) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("conNo", conNo);
		map.put("modOrder", modOrder);
	
		return moduleDao.getModule(map);
	}
	
	@Override
	public String getWords(int conNo, int modOrder) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("conNo", conNo);
		map.put("modOrder", modOrder);
		
		return moduleDao.getModule(map);
	}
	
	@Override
	public String getSensegroup(int conNo, int modOrder) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("conNo", conNo);
		map.put("modOrder", modOrder);
		
		return moduleDao.getModule(map);
	}

	@Override
	public String getRoleplay(int conNo, int modOrder) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("conNo", conNo);
		map.put("modOrder", modOrder);
		
		return moduleDao.getModule(map);
	}


	@Override
	public int addMod(Module module) throws Exception {
		return moduleDao.addMod(module);
	}



}