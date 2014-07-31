package spring.service.module.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.domain.Contents;
import spring.service.module.ContentsDao;
import spring.service.module.ContentsService;
import spring.service.module.ModuleDao;
import spring.service.module.ModuleService;

/*
 * FileName : ModuleServiceImpl13.java
 * �� ȸ������ ���� �����Ͻ� ������ �߻�ȭ�� interface ����
 * �� Component : interface �� Encapsulation �� ���밡�� �� library
 */
@Service("contentsService")
public class ContentsServiceImpl implements ContentsService {
	///Field
	@Autowired
	@Qualifier("contentsDao")
	ContentsDao contentsDao;
	
	///Constructor
	public ContentsServiceImpl() {
		System.out.println("::"+getClass()+" default Constructor Call.....");
	}
	
	///Method
	@Override
	public List<Contents> getConList() throws Exception {
		return contentsDao.getConList();
	}



}