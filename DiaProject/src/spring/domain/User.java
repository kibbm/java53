package spring.domain;

import java.io.Serializable;
import java.sql.Timestamp;

/*
 * FileName : User.java  
 * ㅇ User 의 정보를 갖는 Value Object (도메인객체,비지니스객체)
 * ㅇ USERS TABLE 의 1개의 ROW 의 정보를 갖는다.  
 */
public class User implements Serializable {

	// /Field
	private int dailyIndex; // 매일학습순서
	private int moduleNo; // no(나중에 sequenceNO)
	private int moduleIndex; // 순서
	private String moduleType; // 유형
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