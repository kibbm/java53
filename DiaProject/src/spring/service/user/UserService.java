package spring.service.user;

import java.util.List;


import java.util.Map;

import spring.domain.User;

/*
 * FileName : UserService.java
 * �� ȸ������ ���� �����Ͻ� ������ �߻�ȭ�� interface
 * �� Component : interface �� Encapsulation �� ���밡�� �� lib
 */
public interface UserService {
	
	//�ܾ� List ���������
	public String getList() throws Exception;
	
	public String[]  getArrayList() throws Exception;
		
}