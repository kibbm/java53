package spring.domain;

import java.sql.Date;

public class Student {
	
	//Field
	private String userId;
	private String password;
	private String email;
	private String userName;
	private String phone;
	private String addr;
	private String targetLang;		//학습언어
	private String nativeLang;		//모국어
	private String stuLevel;		//레벨
	private String role;			//역할
	private Date joindate;			//가입일
	private boolean flag;			//탈퇴여부
	
		
	//Constructor
	public Student() {
		// TODO Auto-generated constructor stub
	}

	
	//Method
	
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

	public String getTargetLang() {
		return targetLang;
	}

	public void setTargetLang(String targetLang) {
		this.targetLang = targetLang;
	}

	public String getNativeLang() {
		return nativeLang;
	}

	public void setNativeLang(String nativeLang) {
		this.nativeLang = nativeLang;
	}

	public String getStuLevel() {
		return stuLevel;
	}

	public void setStuLevel(String stuLevel) {
		this.stuLevel = stuLevel;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
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
				+ ", email=" + email + ", userName=" + userName + ", phone="
				+ phone + ", addr=" + addr + ", targetLang=" + targetLang
				+ ", nativeLang=" + nativeLang + ", stuLevel=" + stuLevel
				+ ", role=" + role + ", joindate=" + joindate + ", flag="
				+ flag + "]";
	}


	



	
}
