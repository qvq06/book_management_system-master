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
		//���ñ�������
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		BookDao bookdao = new BookDao();
		//Ϊ�����ֽ���ͻ���Ĺ��ܣ�����tip��tipΪ1����ʾ�ύί�н�������
		int tip = Integer.parseInt(request.getParameter("tip"));
		if(tip==0){
			//��ȡͼ��id
		
			int bid=Integer.parseInt(request.getParameter("bid"));

			String place=request.getParameter("place");
			HttpSession session = request.getSession();
			AdminBean admin = new AdminBean();
			//��ȡ������session��aid����id
			String userid = (String)session.getAttribute("userid");
			AdminDao admindao = new AdminDao();
			//ͨ��aid��ȡ�����ߵ���Ϣ
			admin = admindao.get_UseridInfo2(userid);
			//��ί�н��ļ�¼�������ݱ�
			bookdao.ApplyBook(bid,place,admin);
			response.sendRedirect("/books/select.jsp");
		}
		else if (tip==1){
			//����Ա���ͨ������

			int aid=Integer.parseInt(request.getParameter("aid"));
			/**
			 * �����ڹ���Ա�Ͷ��߽��涼�У�Ϊ�����֣�������show�ֶΣ�showΪ1��ʾ���߽���
			 */
			//���û��麯�����ı�status�ֶ�
			bookdao.agreeApply(aid);

				response.sendRedirect("/books/admin_apply.jsp");
			
		}
			
			else if(tip==2){
				//����Ա��˲�ͨ������
	
				int aid=Integer.parseInt(request.getParameter("aid"));
				/**
				 * �����ڹ���Ա�Ͷ��߽��涼�У�Ϊ�����֣�������show�ֶΣ�showΪ1��ʾ���߽���
				 */
				//���û��麯�����ı�status�ֶ�
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
