package com.niit.skartbackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "user")
@Component
public class User {
	
	@Id
	@Column(name="email")
	@Email(message="Your email must be eg:abc@email")
	private String email;
	@Column(name = "name")
	private String name;
	@Column(name = "password")
	@Size(min = 6, max = 15, message = "Minimum 8 charaters")
	private String password;
	@Column(name = "role")
	private String role;
	@Column(name = "mobile")
	private String mobile;
	@Column(name = "adress")
	private String address;
	@Column(name = "admin")
	private boolean isAdmin;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	
	
	

}
