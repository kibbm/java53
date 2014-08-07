package spring.service.student.test;

import junit.framework.Assert;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import spring.domain.Student;
import spring.service.student.StudentService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration (locations = {"classpath:config/commonservice.xml"})

public class StudentServiceTest {
	
	@Autowired
	@Qualifier("studentService")
	private StudentService studentService;
	
	//@Test
	public void testAddStudent() throws Exception{
		Student student = new Student();
		student.setUserId("bab");
		student.setPassword("1111");
		student.setEmail("bab@bab.com");
		student.setUserName("바압");
		student.setPhone("012-023-0351");
		student.setAddr("강동시 강동구");		
		student.setTargetLang("스펜어");		
		studentService.addStudent(student);
	}
	
	//@Test
	public void testGetStudent() throws Exception{
		Student student = new Student();		
		student = studentService.getStudent("aab");
		
		Assert.assertEquals("aab", student.getUserId());
		Assert.assertEquals("엄친구", student.getUserName());
		Assert.assertEquals("불어", student.getTargetLang());
	}
	
	//@Test
	public void testUpdateStudent() throws Exception{
		
		Student student = studentService.getStudent("baa");		
		student.setPassword("2222");
		student.setAddr("속초시 속초구");
		System.out.println("::student : " + student);
		studentService.updateStudent(student);
		
		Assert.assertNotNull(student);
		Assert.assertEquals("baa", student.getUserId());
		Assert.assertEquals("2222", student.getPassword());
		Assert.assertEquals("속초시 속초구", student.getAddr());		
	}
	
	//@Test
	public void testUpdateLeaveStudent() throws Exception{
		Student student = studentService.getStudent("baa");
		studentService.updateLeaveStudent(student);
				
		Assert.assertNotNull(student);		
		Assert.assertEquals("baa", student.getUserId());		
		Assert.assertEquals(false, student.isFlag());		
	}
	
	
}
