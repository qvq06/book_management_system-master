package com.rain.servlet;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.rain.dao.*;
import com.rain.dao.BookDao;

/**
 * Servlet implementation class AddBookServlet
 */
@WebServlet("/AddSubscServlet")
public class AddSubscServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSubscServlet() {
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
		//���ñ�������
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//��ȡҪ���ͼ��Ŀ¼����Ϣ		
		String cn = request.getParameter("cn");
		String bname=request.getParameter("bname");
		
		SubscDao bookdao = new SubscDao();
		//���ú����������ڿ�Ŀ¼
		bookdao.AddSubsc(cn,bname);
		response.sendRedirect("/books/admin_subsc.jsp");
	}

}
