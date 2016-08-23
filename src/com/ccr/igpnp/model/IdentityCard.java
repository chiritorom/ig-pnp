package com.ccr.igpnp.model;

public class IdentityCard {
	
	private int identityCardId;
	private String description;
	private String acronym;
	
	public IdentityCard() {
		
	}

	public IdentityCard(int identityCardId, String description, String acronym) {
		super();
		this.identityCardId = identityCardId;
		this.description = description;
		this.acronym = acronym;
	}

	public int getIdentityCardId() {
		return identityCardId;
	}

	public void setIdentityCardId(int identityCardId) {
		this.identityCardId = identityCardId;
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
