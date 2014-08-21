package spring.domain;

public class Contents {
	
	//field
	private int conNo;
	private String conTitle;
	private String conLevel;
	private int conOrder;

	//constructor
	public Contents() {	
	}


	//getter&setter
	public int getConNo() {
		return conNo;
	}

	public void setConNo(int conNo) {
		this.conNo = conNo;
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
	
	@Override
	public String toString(){
		return "Module [conNo=" + conNo + ", conTitle=" + conTitle
				+ ", conLevel=" + conLevel + ", conOrder=" + conOrder + "]";		
	}

	
	
}
