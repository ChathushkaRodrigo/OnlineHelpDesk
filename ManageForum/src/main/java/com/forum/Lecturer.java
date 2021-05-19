package com.forum;

public class Lecturer {

	
	private String lecturerID;
	private String lecturerName;
	private String lecturerEmail;
	private String password;
	
	public Lecturer(String lecturerID, String lecturerName, String lecturerEmail, String password) {
		super();
		this.lecturerID = lecturerID;
		this.lecturerName = lecturerName;
		this.lecturerEmail = lecturerEmail;
		this.password = password;
	}

	public String getLecturerID() {
		return lecturerID;
	}



	public String getLecturerName() {
		return lecturerName;
	}

	
	public String getLecturerEmail() {
		return lecturerEmail;
	}

	

	public String getPassword() {
		return password;
	}


	
}
