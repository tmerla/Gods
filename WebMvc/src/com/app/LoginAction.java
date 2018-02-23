package com.app;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

public class LoginAction {
	private JdbcTemplate template;
	public void setTemplate(JdbcTemplate template)
	{
		this.template = template;
	}
	public String verifyUser(String username,String password)
	{
		String SQL = "select * from users where username=? and password=?";
		List<Map<String,Object>> list = template.queryForList(SQL,username,password);
		if (list.size() == 0)
			return "Failure";
		else
			return "Success";
	}
}