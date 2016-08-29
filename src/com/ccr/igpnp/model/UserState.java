package com.ccr.igpnp.model;

public class UserState {
	
	private int userStateId;
	private String description;

	public UserState() {
		
	}

	public UserState(int userStateId, String description) {
		super();
		this.userStateId = userStateId;
		this.description = description;
	}

	public int getUserStateId() {
		return userStateId;
	}

	public void setUserStateId(int userStateId) {
		this.userStateId = userStateId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
