package com.rain.util;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {

	public static String username = "root";
	public static String password = "root";
	public static String url = "jdbc:mysql://localhost:3306/library?characterEncoding=utf-8&serverTimezone=GMT%2B8";
	
	static{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	public static Connection getConnectDb(){
		Connection conn = null;
		try{
			conn = DriverManager.getConnection(url,username,password);
		
		} catch (SQLException e){
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void CloseDB(ResultSet rs, PreparedStatement stm, Connection conn){
		if(rs!=null)
		{
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(stm!=null)
		{
			try {
				stm.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn!=null)
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
