package spring.domain;

import java.sql.Date;

public class Student {
	
	//Field
	private String userId;
	private String password;
	private String email;
	private String userName;
	private String birthdate;	//나이 확인 위한 생년월일
	private String phone;
	private String addr;	
	private String level;		//레벨	
	private Date joindate;		//가입일
	private boolean flag;		//탈퇴여부
	
		
	//Constructor
	public Student() {
		// TODO Auto-generated constructor stub
	}


	//getter, setter
	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getBirthdate() {
		return birthdate;
	}


	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getLevel() {
		return level;
	}


	public void setLevel(String level) {
		this.level = level;
	}


	public Date getJoindate() {
		return joindate;
	}


	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}


	public boolean isFlag() {
		return flag;
	}


	public void setFlag(boolean flag) {
		this.flag = flag;
	}


	@Override
	public String toString() {
		return "Student [userId=" + userId + ", password=" + password
				+ ", email=" + email + ", userName=" + userName
				+ ", birthdate=" + birthdate + ", phone=" + phone + ", addr="
				+ addr + ", level=" + level + ", joindate=" + joindate
				+ ", flag=" + flag + "]";
	}	
}
