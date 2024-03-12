package com.rain.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rain.dao.BookDao;

/**
 * Servlet implementation class updateBookServlet
 */
@WebServlet("/updateBookServlet")
public class updateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		//修改图书信息
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int bid = Integer.parseInt(request.getParameter("updatebid"));
		String cn = request.getParameter("cn");
		String bname = request.getParameter("bname");
		int year=Integer.parseInt(request.getParameter("year"));
		int volume=Integer.parseInt(request.getParameter("volume"));
		int issue=Integer.parseInt(request.getParameter("issue"));
		String library = request.getParameter("library");
		int bstatus = Integer.parseInt(request.getParameter("bstatus"));
		BookDao bookdao = new BookDao();
		bookdao.updateBook(bid,cn,bname,year,volume,issue,library,bstatus);
		response.sendRedirect("/books/admin_book2.jsp");
	}

}
