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

	///Method
	@Override
	public String getList() throws Exception {
		return moduleDao.getList();
	}
	
	@Override
	public String getRolePlay() throws Exception {
		return moduleDao.getRolePlay();
	}

	public void setModuleDao(ModuleDao ModuleDao) {
		System.out.println("::"+getClass()+".setModuleDao  Call.....");
		this.moduleDao = ModuleDao;
	}
	
	///Constructor
	public ModuleServiceImpl() {
		System.out.println("::"+getClass()+" default Constructor Call.....");
	}

	

}