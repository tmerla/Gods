package com.app;
import com.app.RegValidator;

import org.springframework.jdbc.core.JdbcTemplate;

public class RegEnter {
	private JdbcTemplate template;
	public void setTemplate(JdbcTemplate template)
	{
		this.template = template;
	}
	public int insertUser(String FirstName,String LastName,String username,String password,String Phone,String Email)
	{
		String SQL = "INSERT INTO users VALUES ('"+FirstName+"','"+LastName+"','"+username+"','"+password+"','"+Phone+"','"+Email+"')";
	
		int result = template.update(SQL);
		if(result == 0) {
		System.out.println("Value not Inserted");;
		}
		else {
			System.out.println("Value  inserted");;
	}
		return result;
}
}
