package spring.service.module.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.service.module.ModuleDao;
import spring.service.module.ModuleService;

/*
 * FileName : ModuleServiceImpl13.java
 * �� ȸ������ ���� �����Ͻ� ������ �߻�ȭ�� interface ����
 * �� Component : interface �� Encapsulation �� ���밡�� �� library
 */
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
	
	///Method
	@Override
	public String getList() throws Exception {
		return moduleDao.getList();
	}

	public void setModuleDao(ModuleDao ModuleDao) {
		System.out.println("::"+getClass()+".setModuleDao  Call.....");
		this.moduleDao = ModuleDao;
	}


	@Override
	public String getWriting() throws Exception {
		return moduleDao.getWriting();
	}

	@Override
	public String getSensegroup() throws Exception {
		return moduleDao.getSensegroup();
	}


}