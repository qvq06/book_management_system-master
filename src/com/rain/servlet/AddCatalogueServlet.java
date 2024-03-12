package com.rain.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rain.dao.BookDao;

/**
 * Servlet implementation class AddBookServlet
 */
@WebServlet("/AddCatalogueServlet")
public class AddCatalogueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCatalogueServlet() {
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
		//设置编码类型
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//获取要添加图书目录的信息
		String cn = request.getParameter("cn");
		String issn=request.getParameter("issn");
		String bname = request.getParameter("bname");
		String pcode= request.getParameter("pcode");
		String publish=request.getParameter("publish");
		String place=request.getParameter("place");
		String press=request.getParameter("press");
		BookDao bookdao = new BookDao();
		//调用函数，存入期刊目录
		bookdao.addCatalogue(cn,issn,bname,pcode,publish,place,press);
		response.sendRedirect("/books/admin_book.jsp");
	}

}
