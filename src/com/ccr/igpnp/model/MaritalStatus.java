package com.ccr.igpnp.model;

public class MaritalStatus {
		
	private int maritalStatusId;
	private String description;
	
	public MaritalStatus() {
		
	}

	public MaritalStatus(int maritalStatusId, String description) {
		super();
		this.maritalStatusId = maritalStatusId;
		this.description = description;
	}
		
	public int getMaritalStatusId() {
		return maritalStatusId;
	}

	public void setMaritalStatusId(int maritalStatusId) {
		this.maritalStatusId = maritalStatusId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
