package spring.common.web;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LogonCheckInterceptor extends HandlerInterceptorAdapter {

	public LogonCheckInterceptor() {
		// TODO Auto-generated constructor stub
		System.out.println("==> LogonCheckInterceptor() default Constructor call.......");
	}


}
