package com.rain.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rain.bean.AdminBean;
import com.rain.dao.AdminDao;
import com.rain.dao.BookDao;
import com.rain.bean.ApplyBean;


@WebServlet("/AddApplyServlet")
public class AddApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddApplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		//设置编码类型
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		BookDao bookdao = new BookDao();
		//为了区分借书和还书的功能，设置tip，tip为1，表示提交委托借阅申请
		int tip = Integer.parseInt(request.getParameter("tip"));
		if(tip==0){
			//获取图书id
		
			int bid=Integer.parseInt(request.getParameter("bid"));

			String place=request.getParameter("place");
			HttpSession session = request.getSession();
			AdminBean admin = new AdminBean();
			//获取到存入session的aid读者id
			String userid = (String)session.getAttribute("userid");
			AdminDao admindao = new AdminDao();
			//通过aid获取到读者的信息
			admin = admindao.get_UseridInfo2(userid);
			//将委托借阅记录存入数据表
			bookdao.ApplyBook(bid,place,admin);
			response.sendRedirect("/books/select.jsp");
		}
		else if (tip==1){
			//管理员审核通过功能

			int aid=Integer.parseInt(request.getParameter("aid"));
			/**
			 * 还书在管理员和读者界面都有，为了区分，设置了show字段，show为1表示读者界面
			 */
			//调用还书函数，改变status字段
			bookdao.agreeApply(aid);

				response.sendRedirect("/books/admin_apply.jsp");
			
		}
			
			else if(tip==2){
				//管理员审核不通过功能
	
				int aid=Integer.parseInt(request.getParameter("aid"));
				/**
				 * 还书在管理员和读者界面都有，为了区分，设置了show字段，show为1表示读者界面
				 */
				//调用还书函数，改变status字段
				bookdao.refuseApply(aid);
	
					response.sendRedirect("/books/admin_apply.jsp");
				}
		}
		


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
