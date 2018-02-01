package com.bank;
import java.sql.*;

import com.bank.GetCon;
public class RegisterUser {
static int status=0;
//int accountno=1;
public static int register(String username,String password,String repassword,double amount,String adderess,double phone){
	//public static int register(String email,String password,String gender,String country,String name){

	Connection con=GetCon.getCon();
	PreparedStatement ps;
	
	try {
		ps = con.prepareStatement("Insert into NEWACCOUNT values(?,?,?,?,?,?,?)");
		int	accountno=GetCon.getPrimaryKey();
		ps.setInt(1,accountno);
		ps.setString(2,username);
		ps.setString(3,password);
		ps.setString(4,repassword);
		ps.setDouble(5,amount);
		ps.setString(6,adderess);
		ps.setDouble(7,phone);
		
		status=ps.executeUpdate();
		System.out.println(status);
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
	
}
}
