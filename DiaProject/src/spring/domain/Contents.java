package spring.domain;

public class Contents {
	
	//field
	private int conIndex;
	private String conTitle;
	private String conLevel;
	private int conOrder;

	//constructor
	public Contents() {	
	}

	//getter, setter
	public int getConIndex() {
		return conIndex;
	}

	public void setConIndex(int conIndex) {
		this.conIndex = conIndex;
	}

	public String getConTitle() {
		return conTitle;
	}

	public void setConTitle(String conTitle) {
		this.conTitle = conTitle;
	}

	public String getConLevel() {
		return conLevel;
	}

	public void setConLevel(String conLevel) {
		this.conLevel = conLevel;
	}

	public int getConOrder() {
		return conOrder;
	}

	public void setConOrder(int conOreder) {
		this.conOrder = conOreder;
	}
	

	
	
	
}
