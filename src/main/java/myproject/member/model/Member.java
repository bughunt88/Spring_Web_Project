package myproject.member.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class Member {
	private final String INPUT = "This field is required" ;
	
	@Length(min = 3, max = 10, message = "This field must have a length between $arg3 and $arg10.")
	private String id ;
	@NotEmpty(message = INPUT )
	@Email(message = "Must be a valid E-Mail.") 
	private String email ;
	@Length(min = 6, message = "Must be at least $arg6.")
	private String password ;
	@NotEmpty(message = INPUT )
	private String repassword;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", email=" + email + ", password=" + password + ", repassword=" + repassword + "]";
	}
	
	
	
}
