package ute.webapplication.services.web;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import ute.webapplication.DAO.web.UserDAO;
import ute.webapplication.model.web.AccountModel;

public class UserAccount {
	
	public UserAccount()
	{
		
	}
	
	public static boolean checkLogin(Connection conn, String userName, String password) throws SQLException
	{
		AccountModel user = UserDAO.findUser(conn, userName, password);
		if (user!=null) {
			return true;
		}
		else {
			return false;
		}
	}
	public static boolean checkPhoneNumber(String phoneNumber)
	{
		String cusPhone = phoneNumber;
		Pattern phonePattern= Pattern.compile("(\\d\\D*){10}");
		Matcher phoneMatcher = phonePattern.matcher(cusPhone);
		if(!phoneMatcher.matches())
		{
			return false;
		}
		else {
			return true;
		}
	}
	
	public static boolean checkEmail(String email)
	{
		String cusEmail = email;
		Pattern mailPattern = Pattern.compile("\\w+@\\w+(.\\w+)*");
		Matcher cusMatcher= mailPattern.matcher(cusEmail);
		if(!cusMatcher.matches())
		{
			return false;
		}
		return true;
	}
	
	public static boolean checkTheSamePassword(String password, String confirmPassword)
	{
		if (password.equals(confirmPassword)) {
			return true;
		}
		return false;
		
	}
	public static boolean checkName(String name)
	{
		String cusName = name;
		if (cusName.equals("")) {
			return false;
		}
		return true;
	}
	public static boolean checkUserName(String userName)
	{
		String cusUserName = userName;
		if (cusUserName.equals("")) {
			return false;
		}
		return true;
	}
	public static boolean checkAddress(String address)
	{
		String cusEmail = address;
		if (cusEmail.equals("")) {
			return false;
		}
		return true;
	}
	public static boolean checkPassword(String password)
	{
		if (password.equals("")) {
			return false;
		}
		return true;
	}
	public static boolean checkConfirmPassword(String confirmPassword)
	{
		if (confirmPassword.equals("")) {
			return false;
		}
		return true;
	}
}
