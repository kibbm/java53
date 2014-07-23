package spring.common.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import spring.domain.User;


public class LogonCheckInterceptor extends HandlerInterceptorAdapter {

	public LogonCheckInterceptor() {
		// TODO Auto-generated constructor stub
		System.out.println("==> LogonCheckInterceptor() default Constructor call.......");
	}


}
