package com.rain.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import com.rain.bean.AdminBean;
import com.rain.bean.BookBean;
import com.rain.bean.HistoryBean;
import com.rain.bean.CatalogueBean;
import com.rain.bean.ApplyBean;
import com.rain.util.DBUtil;
/**
 * 关于图书连接数据库的所有操作的类
 */
public class BookDao {


	public void addBook(String cn, String bname, int year,int volume,int issue,String library,int bstatus) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "insert  into book(cn,bname,year,volume,issue,library,bstatus) values(?,?,?,?,?,?,?)";
		int rs = 0;
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1,cn);
			stm.setString(2, bname);
			stm.setInt(3, year);
			stm.setInt(4, volume);
			stm.setInt(5, issue);
			stm.setString(6, library);
			stm.setInt(7, bstatus);
			rs = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void addCatalogue(String cn, String issn,String bname, String pcode,String publish,String place,String press) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "insert  into catalogue(cn,issn,bname,pcode,publish,place,press) values(?,?,?,?,?,?,?)";
		int rs = 0;
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1,cn);
			stm.setString(2,issn);
			stm.setString(3, bname);
			stm.setString(4, pcode);
			stm.setString(5, publish);
			stm.setString(6, place);
			stm.setString(7, press);
			rs = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/***/
	public ArrayList<BookBean> get_ListInfo2(){
		ArrayList<BookBean> tag_Array = new ArrayList<BookBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from book where bstatus=0";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				BookBean tag = new BookBean();
				tag.setBid(rs.getInt("bid"));
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag.setYear(rs.getInt("year"));
				tag.setVolume(rs.getInt("volume"));
				tag.setIssue(rs.getInt("issue"));
				tag.setLibrary(rs.getString("library"));
				tag.setBstatus(rs.getInt("bstatus"));
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

	/**
	 * 获取所有的图书信息，返回的是ArrayList数组形式
	 * @return
	 */
	
	/****************/
	
	
	
	public ArrayList<BookBean> get_ListInfo(){
		ArrayList<BookBean> tag_Array = new ArrayList<BookBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from book";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				BookBean tag = new BookBean();
				tag.setBid(rs.getInt("bid"));
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag.setYear(rs.getInt("year"));
				tag.setVolume(rs.getInt("volume"));
				tag.setIssue(rs.getInt("issue"));
				tag.setLibrary(rs.getString("library"));
				tag.setBstatus(rs.getInt("bstatus"));
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
	
	
	/*获取所有期刊目录信息*/
	public ArrayList<CatalogueBean> get_CataloguInfo(){
		ArrayList<CatalogueBean> tag_Array = new ArrayList<CatalogueBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from catalogue";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				CatalogueBean tag = new CatalogueBean();
				tag.setCid(rs.getInt("cid"));
				tag.setCN(rs.getString("cn"));
				tag.setISSN(rs.getString("issn"));
				tag.setBname(rs.getString("bname"));
				tag.setPcode(rs.getString("pcode"));
				tag.setPublish(rs.getString("publish"));
				tag.setPlace(rs.getString("place"));
				tag.setPress(rs.getString("press"));
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
	
	/*获取所有未审核的委托借阅申请，传入astatus*/
	public ArrayList<ApplyBean> get_ApplyInfo(int astatus){
		ArrayList<ApplyBean> tag_Array = new ArrayList<ApplyBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from apply where astatus="+astatus;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				ApplyBean tag = new ApplyBean();
			    tag.setAid(rs.getInt("aid"));
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag.setUserid(rs.getString("userid"));
				tag.setYear(rs.getInt("year"));
				tag.setVolume(rs.getInt("volume"));
				tag.setIssue(rs.getInt("issue"));
				tag.setAstatus(rs.getInt("astatus"));
				tag.setPlace(rs.getString("place"));
				tag.setApplytime(rs.getString("applytime"));
				tag.setEndtime(rs.getString("endtime"));
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
	
	/*获取该用户的委托借阅申请，传入userid*/
	
	
	
	
	
	/**
	 * 获取借阅记录的全部信息，传入的条件有status，aid，表示搜索正在借阅的，或者已经还书的信息，aid代表当前登录用户
	 * @param status
	 * @return
	 */
	public ArrayList<HistoryBean> get_HistoryListInfo(int hstatus,String userid){
		ArrayList<HistoryBean> tag_Array = new ArrayList<HistoryBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from history where userid="+userid+" and hstatus="+hstatus;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				HistoryBean tag = new HistoryBean();
				tag.setHid(rs.getInt("hid"));
				tag.setBid(rs.getInt("bid"));
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag.setYear(rs.getInt("year"));
				tag.setVolume(rs.getInt("volume"));
				tag.setIssue(rs.getInt("issue"));
				tag.setUserid(rs.getString("userid"));
				tag.setBegintime(rs.getString("begintime"));
				tag.setEndttime(rs.getString("endttime"));
				tag.setHstatus(rs.getInt("hstatus"));
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
	/**
	 * 获取借阅记录的全部信息，传入的条件有status，表示搜索正在借阅的，或者已经还书的信息
	 * @param status
	 * @return
	 */
	public ArrayList<HistoryBean> get_HistoryListInfo2(int hstatus){
		ArrayList<HistoryBean> tag_Array = new ArrayList<HistoryBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from history where hstatus="+hstatus;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				HistoryBean tag = new HistoryBean();
				tag.setHid(rs.getInt("hid"));
				tag.setBid(rs.getInt("bid"));
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag.setYear(rs.getInt("year"));
				tag.setVolume(rs.getInt("volume"));
				tag.setIssue(rs.getInt("issue"));
				tag.setUserid(rs.getString("userid"));
				tag.setBegintime(rs.getString("begintime"));
				tag.setEndttime(rs.getString("endttime"));
				tag.setHstatus(rs.getInt("hstatus"));
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
	/**
	 * 获取单个图书的信息，根据传入的cn,年卷期来查找，返回一个BookBean数据类型
	 * @param bid
	 * @return
	 */
	public BookBean get_BookInfo(int bid){

		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from book where bid="+bid;
		BookBean tag = new BookBean();
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				tag.setBid(rs.getInt("bid"));
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag.setYear(rs.getInt("year"));
				tag.setVolume(rs.getInt("volume"));
				tag.setIssue(rs.getInt("issue"));
				tag.setLibrary(rs.getString("library"));
				tag.setBstatus(rs.getInt("bstatus"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag;
	}
	/*            */
	public HistoryBean get_HistoryInfo(int hid){

		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from history where hid="+hid;
		HistoryBean tag = new HistoryBean();
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				tag.setHid(rs.getInt("hid"));
				tag.setBid(rs.getInt("bid"));
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag.setYear(rs.getInt("year"));
				tag.setVolume(rs.getInt("volume"));
				tag.setIssue(rs.getInt("issue"));
				tag.setUserid(rs.getString("userid"));
				tag.setBegintime(rs.getString("begintime"));
				tag.setEndttime(rs.getString("endttime"));
				tag.setHstatus(rs.getInt("hstatus"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag;
	}
	
	
	/***获得单个期刊目录信息***/
	public CatalogueBean get_CatalogueInfo(int cid){

		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from catalogue where cid="+cid;
		CatalogueBean tag = new CatalogueBean();
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				tag.setCid(rs.getInt("cid"));
				tag.setCN(rs.getString("cn"));
				tag.setISSN(rs.getString("issn"));
				tag.setBname(rs.getString("bname"));
				tag.setPcode(rs.getString("pcode"));
				tag.setPublish(rs.getString("publish"));
				tag.setPlace(rs.getString("place"));
				tag.setPress(rs.getString("press"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag;
	}
	/**
	 * 修改图书的信息，bid作为条件，
	 */
	public void updateBook(int bid ,String cn, String bname, int year,int volume,int issue,String library,int bstatus) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "update book set cn=?,bname=?,year=?,volume=?,issue=?,library=?,bstatus=? where bid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1,cn);
			stm.setString(2, bname);
			stm.setInt(3, year);
			stm.setInt(4, volume);
			stm.setInt(5, issue);
			stm.setString(6, library);
			stm.setInt(7, bstatus);
			stm.setInt(8,bid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/*修改期刊目录信息*/
	
	public void updateCatalogue(String cn, String issn,String bname, String pcode,String publish,String place,String press) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "update catalogue set issn=?,bname=?,pcode=?,publish=?,place=?,press=? where cn=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
		    
			stm.setString(1, issn);
			stm.setString(2, bname);
			stm.setString(3, pcode);
			stm.setString(4, publish);
			stm.setString(5, place);
			stm.setString(6, press);
			stm.setString(7,cn);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	
	
	
	
	
	
	
	/**
	 * 删除图书信息，根据传入的cn作为条件
	 * @param bid
	 */
	public void deleteBook(int bid) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "delete from book where bid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1, bid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(uid);
		
	}
	
	/*删除期刊目录信息*/
	
	public void deleteCatalouge(int cid) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "delete from catalogue where cid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1,cid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(uid);
		
	}
	
	
	
	
	
	
	
	/**
	 * 用户查找图书，根据输入的名称，使用like进行模糊查询，然后返回一个ArrayList数组类型
	 * @param name
	 * @return
	 */
	public ArrayList<BookBean> getLikeList(String bname) {
		// TODO Auto-generated method stub
		ArrayList<BookBean> tag_Array = new ArrayList<BookBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from book where bname like '%"+bname+"%'";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				BookBean tag = new BookBean();
				tag.setCN(rs.getString("cn"));
				tag.setBname(rs.getString("bname"));
				tag.setYear(rs.getInt("year"));
				tag.setVolume(rs.getInt("volume"));
				tag.setIssue(rs.getInt("issue"));
				tag.setLibrary(rs.getString("library"));
				tag.setBstatus(rs.getInt("bstatus"));
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
	
	/*******************************/
	public ArrayList<CatalogueBean> getLikeList2(String bname) {
		// TODO Auto-generated method stub
		ArrayList<CatalogueBean> tag_Array = new ArrayList<CatalogueBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from catalogue where bname like '%"+bname+"%'";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				CatalogueBean tag = new CatalogueBean();
				tag.setCN(rs.getString("cn"));
				tag.setISSN(rs.getString("issn"));
				tag.setBname(rs.getString("bname"));
				tag.setPcode(rs.getString("pcode"));
				tag.setPublish(rs.getString("publish"));
				tag.setPlace(rs.getString("place"));
				tag.setPress(rs.getString("press"));
				
			
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
	/**
	 * 图书借阅函数，根据传入bid图书id，adminbean当前登录用户的信息，在借阅记录数据表中新插入一条记录
	 * @param bid
	 * @param adminbean
	 */
	public void borrowBook(int bid,AdminBean adminbean) {
		// TODO Auto-generated method stub
		BookBean bookbean = new BookBean();
		bookbean = this.get_BookInfo(bid);
		//生成日期的功能
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);  
		int month = c.get(Calendar.MONTH);   
		int day = c.get(Calendar.DATE);  
        int h=c.get(Calendar.HOUR_OF_DAY);      
        int mi=c.get(Calendar.MINUTE);      
        int s=c.get(Calendar.SECOND);  
		//生成借阅开始日期
		String begintime = ""+year+"-"+month+"-"+day+" :"+h+":"+mi+":"+s;
		month = month + 1;
		//生成截止还书日期
		String endtime = ""+year+"-"+month+"-"+day+" :"+h+":"+mi+":"+s;
		Connection conn = DBUtil.getConnectDb();
		String sql = "insert  into history(bid,cn,bname,year,volume,issue,userid,begintime,endttime,hstatus) values(?,?,?,?,?,?,?,?,?,?)";
		int rs = 0;
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1, bookbean.getBid());
			stm.setString(2, bookbean.getCN());
			stm.setString(3,bookbean.getBname());
			stm.setInt(4, bookbean.getYear());
			stm.setInt(5, bookbean.getVolume());
			stm.setInt(6, bookbean.getIssue());
			stm.setString(7, adminbean.getUserid());
			stm.setString(8, begintime);
			stm.setString(9, endtime);
			stm.setInt(10, 1);
			rs = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection conn2 = DBUtil.getConnectDb();
		String sql2="update book set bstatus=? where bid=?";
		
		PreparedStatement stm2 = null;
		try {
			stm2 = conn2.prepareStatement(sql2);
			stm2.setInt(1, 1);
			stm2.setInt(2,bid);
			stm2.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/*新增委托借阅申请*/
	public void ApplyBook(int bid ,String place,AdminBean adminbean) {
		// TODO Auto-generated method stub
		BookBean bookbean = new BookBean();
		bookbean = this.get_BookInfo(bid);
		//生成日期的功能
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);  
		int month = c.get(Calendar.MONTH);   
		int day = c.get(Calendar.DATE);  
        int h=c.get(Calendar.HOUR_OF_DAY);      
        int mi=c.get(Calendar.MINUTE);      
        int s=c.get(Calendar.SECOND);  
		//生成委托借阅开始日期
		String applytime = ""+year+"-"+month+"-"+day+" :"+h+":"+mi+":"+s;
		
		//生成预计处理时间
		String endtime = ""+year+"-"+month+"-"+day+" :"+h+":"+mi+":"+s;
		Connection conn = DBUtil.getConnectDb();
		String sql = "insert  into apply(cn,bname,userid,year,volume,issue,astatus,place,applytime,endtime) values(?,?,?,?,?,?,?,?,?,?)";
		int rs = 0;
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, bookbean.getCN());
			stm.setString(2,bookbean.getBname());
			stm.setString(3, adminbean.getUserid());
			stm.setInt(4, bookbean.getYear());
			stm.setInt(5, bookbean.getVolume());
			stm.setInt(6, bookbean.getIssue());
            stm.setInt(7,0);
            stm.setString(8, place);
			stm.setString(9, applytime);
			stm.setString(10, endtime);
			rs = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 还书功能的函数，根据传入的hid借阅记录id，讲status字段的值改为0，并将还书日期改变为当前日期
	 * @param hid
	 */
	public void borrowBook2(int hid) {
		// TODO Auto-generated method stub
		//生成日期
		HistoryBean bean = new HistoryBean();
		bean = this.get_HistoryInfo(hid);
		BookBean bookbean = new BookBean();
		bookbean = this.get_BookInfo(bean.getBid());
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);  
		int month = c.get(Calendar.MONTH);   
		int day = c.get(Calendar.DATE); 
        int h=c.get(Calendar.HOUR_OF_DAY);      
        int mi=c.get(Calendar.MINUTE);      
        int s=c.get(Calendar.SECOND);  
		//生成还书日期
		String endtime = ""+year+"-"+month+"-"+day+" :"+h+":"+mi+":"+s;
		Connection conn = DBUtil.getConnectDb();
		String sql = "update history set endttime=?,hstatus=? where hid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, endtime);
			stm.setInt(2, 0);
			stm.setInt(3, hid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection conn2 = DBUtil.getConnectDb();
		String sql2="update book set bstatus=? where bid=?";
		PreparedStatement stm2 = null;
		try {
			stm2 = conn2.prepareStatement(sql2);
			stm2.setInt(1, 0);
			stm2.setInt(2,bookbean.getBid());
			stm2.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/*管理员通过申请*/
	public void agreeApply(int aid) {
		// TODO Auto-generated method stub
		//生成日期
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);  
		int month = c.get(Calendar.MONTH);   
		int day = c.get(Calendar.DATE); 
        int h=c.get(Calendar.HOUR_OF_DAY);      
        int mi=c.get(Calendar.MINUTE);      
        int s=c.get(Calendar.SECOND);  
		//生成还书日期
		String endtime = ""+year+"-"+month+"-"+day+" :"+h+":"+mi+":"+s;
		Connection conn = DBUtil.getConnectDb();
		String sql = "update apply set endtime=?,astatus=? where aid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, endtime);
			stm.setInt(2, 1);
			stm.setInt(3, aid);

			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/*管理员拒绝申请*/
	public void refuseApply(int aid) {
		// TODO Auto-generated method stub
		//生成日期
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);  
		int month = c.get(Calendar.MONTH);   
		int day = c.get(Calendar.DATE); 
        int h=c.get(Calendar.HOUR_OF_DAY);      
        int mi=c.get(Calendar.MINUTE);      
        int s=c.get(Calendar.SECOND);  
		//生成还书日期
		String endtime = ""+year+"-"+month+"-"+day+" :"+h+":"+mi+":"+s;
		Connection conn = DBUtil.getConnectDb();
		String sql = "update apply set endtime=?,astatus=? where aid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, endtime);
			stm.setInt(2, 2);
			stm.setInt(3, aid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}





/*用户查找所有自己未审批或通过或被拒绝的申请*/
public ArrayList<ApplyBean> get_ApplyListInfo(int astatus,String userid){
	ArrayList<ApplyBean> tag_Array = new ArrayList<ApplyBean>();
	Connection conn = DBUtil.getConnectDb();
	String sql = "select * from apply where userid="+userid+" and astatus="+astatus;
	PreparedStatement stm = null;
	ResultSet rs = null;
	try {
		stm = conn.prepareStatement(sql);
		rs = stm.executeQuery();
		while(rs.next()){
			ApplyBean tag = new ApplyBean();
			tag.setAid(rs.getInt("aid"));
			tag.setCN(rs.getString("cn"));
			tag.setBname(rs.getString("bname"));
			tag.setYear(rs.getInt("year"));
			tag.setVolume(rs.getInt("volume"));
			tag.setIssue(rs.getInt("issue"));
			tag.setUserid(rs.getString("userid"));
			tag.setPlace(rs.getString("place"));
			tag.setApplytime(rs.getString("applytime"));
			tag.setEndtime(rs.getString("endtime"));
			tag.setAstatus(rs.getInt("astatus"));
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


