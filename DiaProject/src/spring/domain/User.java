package spring.domain;

import java.io.Serializable;
import java.sql.Timestamp;

/*
 * FileName : User.java  
 * �� User �� ������ ���� Value Object (�����ΰ�ü,�����Ͻ���ü)
 * �� USERS TABLE �� 1���� ROW �� ������ ���´�.  
 */
public class User implements Serializable {

	// /Field
	private int dailyIndex; // �����н�����
	private int moduleNo; // no(���߿� sequenceNO)
	private int moduleIndex; // ����
	private String moduleType; // ����
	private String moduleQuiz; // quiz

	// /Constructor
	public User() {
	}

	// /Method (getter/setter)
	public int getDailyIndex() {
		return dailyIndex;
	}

	public void setDailyIndex(int dailyIndex) {
		this.dailyIndex = dailyIndex;
	}

	public int getModuleNo() {
		return moduleNo;
	}

	public void setModuleNo(int moduleNo) {
		this.moduleNo = moduleNo;
	}

	public int getModuleIndex() {
		return moduleIndex;
	}

	public void setModuleIndex(int moduleIndex) {
		this.moduleIndex = moduleIndex;
	}

	public String getModuleType() {
		return moduleType;
	}

	public void setModuleType(String moduleType) {
		this.moduleType = moduleType;
	}

	public String getModuleQuiz() {
		return moduleQuiz;
	}

	public void setModuleQuiz(String moduleQuiz) {
		this.moduleQuiz = moduleQuiz;
	}

	@Override
	public String toString() {
		return "User [dailyIndex=" + dailyIndex + ", moduleNo=" + moduleNo
				+ ", moduleIndex=" + moduleIndex + ", moduleType=" + moduleType
				+ ", moduleQuiz=" + moduleQuiz;
	}

}// end of class