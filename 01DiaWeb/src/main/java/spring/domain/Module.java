package spring.domain;

import java.io.Serializable;

public class Module implements Serializable {
	
	//field
	private int modNo;
	private int conNo;
	private String modType;
	private int modOrder;
	private String modQuiz;
	
	//constructor
	public Module() {
	}

	
	//getter&setter
	public int getModNo() {
		return modNo;
	}

	public void setModNo(int modNo) {
		this.modNo = modNo;
	}

	public int getConNo() {
		return conNo;
	}

	public void setConNo(int conNo) {
		this.conNo = conNo;
	}

	public String getModType() {
		return modType;
	}

	public void setModType(String modType) {
		this.modType = modType;
	}

	public int getModOrder() {
		return modOrder;
	}

	public void setModOrder(int modOrder) {
		this.modOrder = modOrder;
	}

	public String getModQuiz() {
		return modQuiz;
	}

	public void setModQuiz(String modQuiz) {
		this.modQuiz = modQuiz;
	}

	@Override
	public String toString() {
		return "Module [conNO=" + conNo + ", modNo="+modNo+", modType=" + modType
				+ ", modOrder=" + modOrder + ", modQuiz=" + modQuiz + "]";
	}


	
	
}
