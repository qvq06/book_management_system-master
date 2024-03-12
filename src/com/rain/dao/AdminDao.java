package com.rain.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.rain.bean.AdminBean;
import com.rain.bean.BookBean;
import com.rain.util.DBUtil;
/**
 * 有关读者账号的连接数据库操作，登录验证，注册，修改账号，修改密码
 */
public class AdminDao {
	
	/**
	 * 登录验证功能，传入用户名和密码，在数据库中查找，如果找到了，返回true，没找到则返回false
	 * @param userid
	 * @param password
	 * @return
	 */
	public boolean Login_verify(String userid,String password){
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from admin where userid="+userid+" and password="+password;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return false;
	}
	/**
	 * 注册账号的函数，传入账号，密码，姓名，邮箱，手机号，借阅天数，可借阅数
	 * @param username
	 * @param password
	 * @param name
	 * @param email
	 * @param phone
	 * @param lend
	 * @param max
	 */
	public void Register(String userid,String uname,String password, String email, String phone,int lend,int max) {
		// TODO Auto-generated method stub
				Connection conn = DBUtil.getConnectDb();
				String sql = "insert  into admin(userid,uname,password,email,phone,status,lend,max) values(?,?,?,?,?,?,?,?)";
				int rs = 0;
				PreparedStatement stm = null;
				try {
					stm = conn.prepareStatement(sql);
					stm.setString(1, userid);
					stm.setString(2, uname);
					stm.setString(3, password);
					stm.setString(4, email);
					stm.setString(5, phone);
					stm.setInt(6, 1);
					stm.setInt(7, lend);
					stm.setInt(8, max);
					rs = stm.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}
	/**
	 * 根据传入的账号，密码，来查找对应的读者信息，返回一个AdminBean类型，
	 * @param userid
	 * @param password
	 * @return
	 */
	public AdminBean getAdminInfo(String userid, String password) {
		// TODO Auto-generated method stub
		AdminBean adminbean = new AdminBean();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from admin where userid="+userid+" and password="+password;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
//			stm.setString(1,name);
			rs = stm.executeQuery();
			if(rs.next()){
				adminbean.setUserid(rs.getString("userid"));
				adminbean.setUname(rs.getString("uname"));
				adminbean.setPassword(rs.getString("password"));
				adminbean.setEmail(rs.getString("email"));
				adminbean.setPhone(rs.getString("phone"));
				adminbean.setStatus(rs.getInt("status"));
				adminbean.setLend(rs.getInt("lend"));
				adminbean.setMax(rs.getInt("max"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return adminbean;
	}
	/**
	 * 获取全部用户的信息，其中sql语句中的status=1，表示只查找读者，不显示管理员的
	 * @return
	 */
	public ArrayList<AdminBean> get_ListInfo(){
		ArrayList<AdminBean> tag_Array = new ArrayList<AdminBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from admin where status=1";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				AdminBean adminbean = new AdminBean();
				
				adminbean.setUserid(rs.getString("userid"));
				adminbean.setUname(rs.getString("uname"));
				adminbean.setPassword(rs.getString("password"));
				adminbean.setEmail(rs.getString("email"));
				adminbean.setPhone(rs.getString("phone"));
				adminbean.setStatus(rs.getInt("status"));
				adminbean.setLend(rs.getInt("lend"));
				adminbean.setMax(rs.getInt("max"));
				tag_Array.add(adminbean);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}
	/**
	 * 根据传入的userid，查找到对应的读者的全部信息，返回一个AdminBean类型的数据
	 * @param userid
	 * @return
	 */
	public AdminBean get_UseridInfo(String  userid){
		AdminBean adminbean = new AdminBean();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from admin where userid="+userid;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			if(rs.next()){
				adminbean.setUserid(rs.getString("userid"));
				adminbean.setUname(rs.getString("uname"));
				adminbean.setPassword(rs.getString("password"));
				adminbean.setEmail(rs.getString("email"));
				adminbean.setPhone(rs.getString("phone"));
				adminbean.setStatus(rs.getInt("status"));
				adminbean.setLend(rs.getInt("lend"));
				adminbean.setMax(rs.getInt("max"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return adminbean;
	}
	/**
	 * 根据传入的userid，查找到对应的读者的全部信息，返回一个AdminBean类型的数据，与上一个相似，只是aid的类型为String，
	 * @param userid
	 * @return
	 */
	public AdminBean get_UseridInfo2(String userid){
		AdminBean adminbean = new AdminBean();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from admin where userid="+userid;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			if(rs.next()){
				adminbean.setUserid(rs.getString("userid"));
				adminbean.setUname(rs.getString("uname"));
				adminbean.setPassword(rs.getString("password"));
				adminbean.setEmail(rs.getString("email"));
				adminbean.setPhone(rs.getString("phone"));
				adminbean.setStatus(rs.getInt("status"));
				adminbean.setLend(rs.getInt("lend"));
				adminbean.setMax(rs.getInt("max"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return adminbean;
	}
	/**
	 * 修改读者的信息，
	 */
	public void updateUser( String userid, String uname,String password, String email, String phone,
			int lend, int max) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "update admin set uname=?,password=?,email=?,phone=?,lend=?,max=? where userid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			
			stm.setString(1, uname);
			stm.setString(2, password);
			stm.setString(3, email);
			stm.setString(4, phone);
			stm.setInt(5, lend);
			stm.setInt(6, max);
			stm.setString(7, userid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 删除用户的信息，根据传入的userid作为条件
	 * @param aid
	 */
	public void deleteUser(String userid) {
		// TODO Auto-generated method stub
				Connection conn = DBUtil.getConnectDb();
				String sql = "delete from admin where userid=?";
				PreparedStatement stm = null;
				try {
					stm = conn.prepareStatement(sql);
					stm.setString(1, userid);
					stm.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
	}
}
