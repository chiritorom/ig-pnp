package com.ccr.igpnp.model;

public class Access {
	
	private int accesdId;
	private String description;
	
	public Access() {
		
	}

	public Access(int accesdId, String description) {
		super();
		this.accesdId = accesdId;
		this.description = description;
	}

	public int getAccesdId() {
		return accesdId;
	}

	public void setAccesdId(int accesdId) {
		this.accesdId = accesdId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
