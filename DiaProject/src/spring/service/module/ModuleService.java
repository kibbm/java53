package spring.service.module;


/*
 * FileName : UserService.java
 * �� ȸ������ ���� �����Ͻ� ������ �߻�ȭ�� interface
 * �� Component : interface �� Encapsulation �� ���밡�� �� lib
 */
public interface ModuleService {
	
	//�ܾ� List ���������
	public String getList() throws Exception;
	
	//Writing ���
	public String getWriting() throws Exception;
	
	//sensegroup List ���
	public String getSensegroup() throws Exception;
		
}