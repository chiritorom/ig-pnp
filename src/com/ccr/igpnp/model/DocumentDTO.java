package com.ccr.igpnp.model;

public class DocumentDTO {
	private int documentId;
	private Person person;
	private String documentDate;
	private String documentNumber;
	private String destination;
	private int documentOriginId;
	private int folioNumber;
	private String registerDate;
	private String subject;
	private int documentTypeId;
	private int documentStateId;
	
	public DocumentDTO() {
		
	}

	public DocumentDTO(int documentId, Person person, String documentDate, String documentNumber, String destination,
			int documentOriginId, int folioNumber, String registerDate, String subject, int documentTypeId,
			int documentStateId) {
		super();
		this.documentId = documentId;
		this.person = person;
		this.documentDate = documentDate;
		this.documentNumber = documentNumber;
		this.destination = destination;
		this.documentOriginId = documentOriginId;
		this.folioNumber = folioNumber;
		this.registerDate = registerDate;
		this.subject = subject;
		this.documentTypeId = documentTypeId;
		this.documentStateId = documentStateId;
	}

	public int getDocumentId() {
		return documentId;
	}

	public void setDocumentId(int documentId) {
		this.documentId = documentId;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public String getDocumentDate() {
		return documentDate;
	}

	public void setDocumentDate(String documentDate) {
		this.documentDate = documentDate;
	}

	public String getDocumentNumber() {
		return documentNumber;
	}

	public void setDocumentNumber(String documentNumber) {
		this.documentNumber = documentNumber;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public int getDocumentOriginId() {
		return documentOriginId;
	}

	public void setDocumentOriginId(int documentOriginId) {
		this.documentOriginId = documentOriginId;
	}

	public int getFolioNumber() {
		return folioNumber;
	}

	public void setFolioNumber(int folioNumber) {
		this.folioNumber = folioNumber;
	}

	public String getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getDocumentTypeId() {
		return documentTypeId;
	}

	public void setDocumentTypeId(int documentTypeId) {
		this.documentTypeId = documentTypeId;
	}

	public int getDocumentStateId() {
		return documentStateId;
	}

	public void setDocumentStateId(int documentStateId) {
		this.documentStateId = documentStateId;
	}
	
}
