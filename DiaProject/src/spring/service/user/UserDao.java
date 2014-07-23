package spring.service.user;

import java.util.List;
import java.util.Map;

import spring.domain.User;

/* 
 * FileName : UserDao.java  ( Data Access Object ) 
 * ㅇ 데이터베이스와 직접적인 통신을 담당하는 퍼시스턴스 계층을 담당할 인터페이스
*/ 
public interface UserDao{
	
	//단어 List 가지고오기
	public String getList() throws Exception;
		
}//end of class