package com.rain.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import com.rain.bean.SubscBean;
import com.rain.bean.AdminBean;
import com.rain.bean.BookBean;
import com.rain.bean.HistoryBean;
import com.rain.bean.CatalogueBean;
import com.rain.bean.ApplyBean;
import com.rain.util.DBUtil;
/**
 * 关于征订连接数据库的所有操作的类
 */
public class SubscDao{

	public void AddSubsc(String cn,String bname) {
		Connection conn = DBUtil.getConnectDb();
		String sql = "insert into subsc(cn,bname,syear) values(?,?,?)";
		int rs = 0;
		PreparedStatement stm = null;
		Calendar c = Calendar.getInstance();
		int syear = c.get(Calendar.YEAR);  
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1,cn);
			stm.setString(2, bname);
			stm.setInt(3, syear+1);
			rs = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	public ArrayList<SubscBean> get_SubscInfo(){
		ArrayList<SubscBean> tag_Array = new ArrayList<SubscBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from subsc";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				SubscBean tag = new SubscBean();
				tag.setSid(rs.getInt("sid"));
				tag.setSyear(rs.getInt("syear"));
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag_Array.add(tag);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}
	
public void DeletSubsc(int sid)
{
		Connection conn = DBUtil.getConnectDb();
		String sql = "delete from subsc where sid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1, sid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(uid);
		
}
public void UpdateSubcs(String cn, String bname, int syear) {
	// TODO Auto-generated method stub
	Connection conn = DBUtil.getConnectDb();
	String sql = "update subsc set bname=?,syear=?,where cn=?";
	PreparedStatement stm = null;
	try {
		stm = conn.prepareStatement(sql);
		stm.setString(1,cn);
		stm.setString(2, bname);
		stm.setInt(3, syear);
		stm.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
public SubscBean Get_subsc(int syear)
{
	SubscBean tag = new SubscBean();
	Connection conn = DBUtil.getConnectDb();
	String sql = "select * from subsc where syear=" +syear;
	PreparedStatement stm = null;
	ResultSet rs = null;
	try {
		stm = conn.prepareStatement(sql);
		rs = stm.executeQuery();
		while(rs.next()){
			tag.setSid(rs.getInt("sid"));
			tag.setCN(rs.getString("cn"));
			tag.setBname(rs.getString("bname"));
			tag.setSyear(rs.getInt("syear"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DBUtil.CloseDB(rs, stm, conn);
	}
	return tag;
}


/*******************************/
public ArrayList<SubscBean> getLikeList3(int syear) {
	// TODO Auto-generated method stub
	ArrayList<SubscBean> tag_Array = new ArrayList<SubscBean>();
	Connection conn = DBUtil.getConnectDb();
	String sql = "select * from subsc where syear="+syear;
	PreparedStatement stm = null;
	ResultSet rs = null;
	try {
		stm = conn.prepareStatement(sql);
		rs = stm.executeQuery();
		while(rs.next()){
			SubscBean tag = new SubscBean();
			tag.setSyear(rs.getInt("syear"));
			tag.setCN(rs.getString("cn"));	
			tag.setBname(rs.getString("bname"));

			tag_Array.add(tag);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		DBUtil.CloseDB(rs, stm, conn);
	}
	return tag_Array;
}
}
	
