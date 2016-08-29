package com.ccr.igpnp.model;

public class UserDTO {
	
	private int userId;
	private PersonDTO person;
	private String username;
	private String password;
	private Access access;
	private UserState userState;
	
	public UserDTO() {
		
	}

	public UserDTO(int userId, PersonDTO person, String username, String password, Access access, UserState userState) {
		super();
		this.userId = userId;
		this.person = person;
		this.username = username;
		this.password = password;
		this.access = access;
		this.userState = userState;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public PersonDTO getPerson() {
		return person;
	}

	public void setPerson(PersonDTO person) {
		this.person = person;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Access getAccess() {
		return access;
	}

	public void setAccess(Access access) {
		this.access = access;
	}

	public UserState getUserState() {
		return userState;
	}

	public void setUserState(UserState userState) {
		this.userState = userState;
	}
	
}
