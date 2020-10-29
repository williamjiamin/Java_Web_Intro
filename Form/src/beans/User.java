package beans;

public class User {
	private String email= "";
	private String password = "";
	
	private String message = "";
	
	
	
	public String getMessage() {
		return message;
	}

	public User() {
		
	}
	
	public User(String email, String password) {
		this.email = email;
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public boolean validate() {
		
		if(email == null) {
			message = "Invalid email,please check!";
			return false;
		}
		
		if(password == null) {
			message = "Invalid password,please check!";
			return false;
		}
		
		if(!email.matches("\\w+@\\w+\\.\\w+")) {
			message = "Invalid email format,please check!";
			return false;
		}
		
		if(password.length() < 8) {
			message = "Password is shorter than 8 charactoers,please check!";
			return false;
		}
		
		else if(password.matches("\\w*\\s+\\w*")) {
			message = "Password cannot contain space ,please check!";
			return false;
		}
		
		
		return true;
	}
	

}
