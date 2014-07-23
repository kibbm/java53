package spring.service.user;

import java.util.List;


import java.util.Map;

import spring.domain.User;

/*
 * FileName : UserService.java
 * ㅇ 회원관리 서비스 비지니스 로직을 추상화한 interface
 * ㅇ Component : interface 로 Encapsulation 된 재사용가능 한 lib
 */
public interface UserService {
	
	//단어 List 가지고오기
	public String getList() throws Exception;
	
	public String[]  getArrayList() throws Exception;
		
}