package spring.domain;

import java.io.Serializable;

public class Module implements Serializable {
	
	//field
	private int conIndex;
	private String modType;
	private String modOrder;
	private String modQuiz;
	
	//constructor
	public Module() {
	}

	//getter&setter
	public int getConIndex() {
		return conIndex;
	}

	public void setConIndex(int conIndex) {
		this.conIndex = conIndex;
	}

	public String getModType() {
		return modType;
	}

	public void setModType(String modType) {
		this.modType = modType;
	}

	public String getModOrder() {
		return modOrder;
	}

	public void setModOrder(String modOrder) {
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
		return "Module [conIndex=" + conIndex + ", modType=" + modType
				+ ", modOrder=" + modOrder + ", modQuiz=" + modQuiz + "]";
	}
	
}
