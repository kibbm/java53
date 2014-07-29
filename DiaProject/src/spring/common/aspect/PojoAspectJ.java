package spring.common.aspect;

import org.aspectj.lang.ProceedingJoinPoint;

/*
 * FileName : PojoAspectJ.java
 *	:: XML �� ���������� aspect �� ����   
  */
public class PojoAspectJ {

	///Constructor
	public PojoAspectJ() {
		System.out.println(":: PojoAspectJ Default Cosntructor");
	}
	
	//Around  Advice
	public Object invoke(ProceedingJoinPoint joinPoint) throws Throwable {
			
		System.out.println("\n[Around before] "+getClass()+".invoke() start.....");
		System.out.println("[Around before] Ÿ�� ��ü :"+
													joinPoint.getTarget().getClass().getName());
		System.out.println("[Around before] Ÿ�� ��ü�� ȣ�� �� method :"+
													joinPoint.getSignature().getName());
		if(joinPoint.getArgs().length !=0){
			System.out.println("[Around before] Ÿ�� ��ü�� ȣ���� "+
			                                    "method�� ���޵Ǵ� ���� : "+ joinPoint.getArgs()[0]);
		}
		//==> Ÿ�� ��ü�� Method �� ȣ�� �ϴ� �κ� 
		Object obj = joinPoint.proceed();

		System.out.println("[Around after] Ÿ�� ��ü�� ȣ���� return value  : "+obj);
		System.out.println("[Around after] "+getClass()+".invoke() end.....\n");

		return obj;
	}
	
}//end of class