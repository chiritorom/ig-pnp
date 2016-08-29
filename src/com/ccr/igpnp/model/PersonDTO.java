package com.ccr.igpnp.model;

public class PersonDTO {
	private int personId;
	private String firstName;
	private String lastName;
	private String birthdate;
	private int genderId;
	private String email;
	private int geographicalLocationId;
	private int identityCardId;
	private String numberIdentityCard;
	
	public PersonDTO() {
		
	}

	public PersonDTO(int personId, String firstName, String lastName, String birthdate, int genderId, String email,
			int geographicalLocationId, int identityCardId, String numberIdentityCard) {
		super();
		this.personId = personId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.birthdate = birthdate;
		this.genderId = genderId;
		this.email = email;
		this.geographicalLocationId = geographicalLocationId;
		this.identityCardId = identityCardId;
		this.numberIdentityCard = numberIdentityCard;
	}

	public int getPersonId() {
		return personId;
	}

	public void setPersonId(int personId) {
		this.personId = personId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public int getGenderId() {
		return genderId;
	}

	public void setGenderId(int genderId) {
		this.genderId = genderId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGeographicalLocationId() {
		return geographicalLocationId;
	}

	public void setGeographicalLocationId(int geographicalLocationId) {
		this.geographicalLocationId = geographicalLocationId;
	}

	public int getIdentityCardId() {
		return identityCardId;
	}

	public void setIdentityCardId(int identityCardId) {
		this.identityCardId = identityCardId;
	}

	public String getNumberIdentityCard() {
		return numberIdentityCard;
	}

	public void setNumberIdentityCard(String numberIdentityCard) {
		this.numberIdentityCard = numberIdentityCard;
	}
		
}
