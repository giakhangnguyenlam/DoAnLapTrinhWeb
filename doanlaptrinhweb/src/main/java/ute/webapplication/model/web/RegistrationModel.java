package ute.webapplication.model.web;

public class RegistrationModel {
	private String phoneError;
	private String emailError;
	private String passwordError;
	
	public RegistrationModel()
	{
		
	}

	public String getPhoneError() {
		return phoneError;
	}

	public void setPhoneError(String phoneError) {
		this.phoneError = phoneError;
	}

	public String getEmailError() {
		return emailError;
	}

	public void setEmailError(String emailError) {
		this.emailError = emailError;
	}

	public String getPasswordError() {
		return passwordError;
	}

	public void setPasswordError(String passwordError) {
		this.passwordError = passwordError;
	}
	
	
}
