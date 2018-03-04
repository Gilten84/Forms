package beans;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class User implements Serializable {
	private String user = "";
	private String email = "";
	
	private String message="";
	
	public String getMessage() {
		return message;
	}
	public User()
	{
		
	}
	public User(String user, String email) {
		super();
		this.user = user;
		this.email = email;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public boolean validate()
	{
		if (this.user==""||this.email=="") {this.message="Please fill both fields"; return false;}
		if (!this.email.matches("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"))
		{
			this.message="Please enter correct email adress"; return false;
		}
		
		return true;
	}

}
