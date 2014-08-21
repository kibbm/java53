package spring.common.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import spring.domain.User;

public class LogonCheckInterceptor extends HandlerInterceptorAdapter {

	///Field
	
	///Constructor
	public LogonCheckInterceptor(){
		System.out.println("\nCommon :: "+this.getClass()+"\n");		
	}
	
	///Method
	public boolean preHandle(	HttpServletRequest request,
														HttpServletResponse response, 
														Object handler) throws Exception {
		
		System.out.println("\n[ LogonCheckInterceptor start........]");
		
		HttpSession session = request.getSession(true);
		User user = (User)session.getAttribute("user");

		//로그인한 회원일 때
		if(   user != null   )  {
		
			String uri = request.getRequestURI();
			if(	uri.indexOf("addUserView") != -1 	|| 	uri.indexOf("addUser") != -1 || 
					uri.indexOf("loginView") != -1 		||	uri.indexOf("login") != -1 		||
					uri.indexOf("updateUser") != -1     || uri.indexOf("updateUserView") != -1  ||
					uri.indexOf("getUser0") != -1 )	{
					request.getRequestDispatcher("/main.html").forward(request, response);
					System.out.println("[ 로그인 상태....로그인 후 불필요한 요구 ]");
					System.out.println("[ LogonCheckInterceptor end........]\n");
					return false;
			}
			
			System.out.println("[로그인 상태 ... ]");
			System.out.println("[ LogonCheckInterceptor end........]\n");
			return true;
			
		}else{ //==> 로그인 한 회원이 아닐 때
			String uri = request.getRequestURI();
			if(		uri.indexOf("addUserView") != -1 	|| 	uri.indexOf("addUser") != -1 || 
					uri.indexOf("loginView") != -1 			||	uri.indexOf("login") != -1  		||
					uri.indexOf("updateUser") != -1     ||  uri.indexOf("updateUserView") != -1  ||
					uri.indexOf("getUser0") != -1 )	{
				System.out.println("[로그인 시도 .... ]");
				System.out.println("[ LogonCheckInterceptor end........]\n");
				return true;
			}
			
			request.getRequestDispatcher("/main.html").forward(request, response);
			System.out.println("[ 로그인 이전 ... ]");
			System.out.println("[ LogonCheckInterceptor end........]\n");
			return false;
		}
	}
}//end of class