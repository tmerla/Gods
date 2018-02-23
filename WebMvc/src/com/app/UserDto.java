package com.app;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;


public class UserDto {
	@NotEmpty
    static String FirstName;
	@NotEmpty
    static String LastName;
    @NotEmpty
	@Size(min = 4, max = 20)
    String username;
    @NotEmpty
    @Size(min = 6, max = 15)
    @Pattern(regexp = "\\S+", message = "Spaces are not allowed")
    static String password;
    @NumberFormat
    static String Phone;
    @NotEmpty
    @Email
    static String Email;
	public static String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public static String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public static String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public static String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
    
}
