package spring.service.student.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import spring.domain.Student;

@Repository("studentDao")
public class StudentDaoImpl implements StudentDao {

	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	//setter
	public void setSqlSession(SqlSession sqlSession){
		System.out.println("::" + getClass() + ".setSqlSession() call...");
		this.sqlSession = sqlSession;
	}
	
	//constructor	
	public StudentDaoImpl() {
		System.out.println("::" + getClass() + "default 시작...");
	}

	@Override
	public int addStudent(Student student) throws Exception {
		return sqlSession.insert("StudentMapper.addStudent", student);
	}

	@Override
	public Student getStudent(String id) throws Exception {
		return sqlSession.selectOne("StudentMapper.getStudent", id);
	}

	@Override
	public int updateStudent(Student student) throws Exception {		
		return sqlSession.update("StudentMapper.updateStudent", student);
	}

	@Override
	public int updateLeaveStudent(Student student) throws Exception {
		return sqlSession.update("StudentMapper.updateLeaveStudent", student);
	}

}
