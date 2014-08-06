package spring.service.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.domain.Student;
import spring.service.student.dao.StudentDao;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	@Autowired
	@Qualifier("studentDao")
	private StudentDao studentDao; 
	
	//set	
	public void setStudentDao(StudentDao studentDao) {
		System.out.println("::" + getClass() + ".setStudentDao call...");
		this.studentDao = studentDao;
	}

	//constructor
	public StudentServiceImpl() {
		System.out.println("::" + getClass() + "default 생성자...");	}

	@Override
	public int addStudent(Student student) throws Exception {
		return studentDao.addStudent(student);
	}

	@Override
	public Student getStudent(String id) throws Exception {
		return studentDao.getStudent(id);
	}

	@Override
	public int updateStudent(Student student) throws Exception {
		return studentDao.updateStudent(student);
	}

	@Override
	public int updateLeaveStudent(Student student) throws Exception {		
		return studentDao.updateLeaveStudent(student);
	}

}
