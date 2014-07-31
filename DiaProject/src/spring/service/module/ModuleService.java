package spring.service.module;


/*
 * FileName : UserService.java
 * ㅇ 회원관리 서비스 비지니스 로직을 추상화한 interface
 * ㅇ Component : interface 로 Encapsulation 된 재사용가능 한 lib
 */
public interface ModuleService {
	
	//단어 List 가지고오기
	public String getList() throws Exception;
	
	//Writing 모듈
	public String getWriting() throws Exception;
	
	//sensegroup List 모듈
	public String getSensegroup() throws Exception;
		
}