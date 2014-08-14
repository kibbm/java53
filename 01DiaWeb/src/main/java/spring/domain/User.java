package spring.domain;

import java.sql.Date;

public class User {
	
	//Field
	private String userId;
	private String password;
	private String email;
	private String userName;
	private String birthdate;	//for checking age
	private String phone;
	private String addr;		//for checking delivery books
	private String level;		
	private Date joindate;		
	private boolean flag;
	private int recid;
	
	private String phone1;
	private String phone2;
	private String phone3;
	
	//Constructor
	public User() {
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
		phone = phone1 +"-"+ phone2 +"-"+ phone3;
		
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
		
		if(phone != null){
			phone1 = phone.split("-")[0];
			phone2 = phone.split("-")[1];
			phone3 = phone.split("-")[2];
		}
	}

	public String getPhone1() {
		return phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public String getPhone3() {
		return phone3;
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

	//add for rowno
	public int getRecid() {
		return recid;
	}


	public void setRecid(int recid) {
		this.recid = recid;
	}

	@Override
	public String toString() {
		return "{ "+ "recid: " + recid + ", userId:\'" + userId  
				+ "\', email:\'" + email + "\', userName:\'" + userName
				+ "\', birthdate:\'" + birthdate + "\', phone:\'" + phone + "\', addr:\'"
				+ addr + "\', level:\'" + level + "\', joindate:\'" + joindate
				+ "\', flag:" + flag + "}";
	}
}