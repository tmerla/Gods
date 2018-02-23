package com.app;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class RegValidator implements Validator{

	@Override
	public boolean supports(Class clazz) {
        return UserDto.class.equals(clazz);
    }

	

	@Override
	public void validate(Object obj, Errors e) {
		// TODO Auto-generated method stub
		 ValidationUtils.rejectIfEmpty(e, "FirstName", "FirstName.empty");
	        UserDto p = (UserDto) obj;
	        ValidationUtils.rejectIfEmpty(e, "LastName", "LastName.empty");
	        
	        ValidationUtils.rejectIfEmpty(e, "username", "username.empty");
	        ValidationUtils.rejectIfEmpty(e, "password", "password.empty");
	        ValidationUtils.rejectIfEmpty(e, "Phone", "Phone.empty");
	        ValidationUtils.rejectIfEmpty(e, "Email", "Email.empty");
	        
	        
	        
	}

	
	
}
