package com.mittal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mittal.model.Login;
import com.mysql.cj.jdbc.Driver;

public class LoginDao {
	public Login getLogin()
	{
		Login login= new Login();
		login.username="admin";
		login.password="admin";
		
		return login;
	}
	
	
	public boolean check(String un,String ps)
	{
		
		String sql="select * from login where UserName=? and Password=?";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con= DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/mittal","root","root"); 
			
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1, un);
			pst.setString(2, ps);
			
			ResultSet rs= pst.executeQuery();
			if(rs.next())
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch (Exception e) {
			return false;
			// TODO: handle exception
		}
	}
}
