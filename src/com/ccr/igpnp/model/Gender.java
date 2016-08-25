package com.ccr.igpnp.model;

public class Gender {
	
	private int genderId;
	private String description;
	private String acronym;
	
	public Gender() {
		
	}

	public Gender(int genderId, String description, String acronym) {
		super();
		this.genderId = genderId;
		this.description = description;
		this.acronym = acronym;
	}

	public int getGenderId() {
		return genderId;
	}

	public void setGenderId(int genderId) {
		this.genderId = genderId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAcronym() {
		return acronym;
	}

	public void setAcronym(String acronym) {
		this.acronym = acronym;
	}
		
}
