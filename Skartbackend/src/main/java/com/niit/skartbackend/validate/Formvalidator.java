package com.niit.skartbackend.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.niit.skartbackend.model.User;

@Component
public class Formvalidator implements Validator {
	
	public void validate(Object target, Errors errors) {
		
		System.out.println("FORM VALIDATOR");
			
		ValidationUtils.rejectIfEmpty(errors, "email", "error.email", "Email is required");
		ValidationUtils.rejectIfEmpty(errors, "name", "error.name", "Name cannot be empty");
	}
	
public boolean supports(Class<?> clazz) {

		return User.class.isAssignableFrom(clazz);
	}
	}




