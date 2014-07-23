package mybatis.service.user.test;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.service.user.UserService;

/*
 * FileName : MyBatisTestApp14.java
  * :: Business Layer unit Test : Service + Persistence (Spring +mybatis + DAO)
  * ::  Annotation ±‚π› 
  */
public class TestApp01 {
	
	///main method
	public static void main(String[] args) throws Exception{

		ApplicationContext context =
				new ClassPathXmlApplicationContext(
						new String[] {	"classpath:config/commonservice.xml"}  );
		System.out.println("\n");

		//==> Bean/IoC Container ∑Œ ∫Œ≈Õ »πµÊ«— UserService ¿ŒΩ∫≈œΩ∫ »πµÊ
		UserService userService = (UserService)context.getBean("userService");
				
		//getUserList Test 
		System.out.println(":: getList()");
		System.out.println("getList≥ªøÎ : "+ userService.getList() );
		System.out.println("\n");
		String[] arrayList=userService.getArrayList();
		
		System.out.println(arrayList[0]);
	
	}//end of main
}//end of class