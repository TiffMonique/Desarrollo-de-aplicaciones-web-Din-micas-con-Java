package com.edutecno;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Vista
 */
@WebServlet("/Vista")
public class Vista extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Vista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("nombre", request.getParameter("nombre"));
		request.setAttribute("empresa", request.getParameter("empresa"));
		request.setAttribute("ciudad", request.getParameter("ciudad"));
		request.setAttribute("pais", request.getParameter("pais"));

		request.setAttribute("cantidad1", Integer.parseInt(request.getParameter("cantidad1")));
		request.setAttribute("cantidad2", Integer.parseInt(request.getParameter("cantidad2")));
		request.setAttribute("cantidad3", Integer.parseInt(request.getParameter("cantidad3")));
		request.setAttribute("cantidad4", Integer.parseInt(request.getParameter("cantidad4")));

		double sub1 = Double.parseDouble(request.getParameter("cantidad1")) * 249000;
		double sub2 = Double.parseDouble(request.getParameter("cantidad2")) * 45990;
		double sub3 = Double.parseDouble(request.getParameter("cantidad3")) * 379000;
		double sub4 = Double.parseDouble(request.getParameter("cantidad4")) * 219990;

		double totalNeto = sub1 + sub2 + sub3 + sub4;
		double total = totalNeto - (totalNeto * 0.10);

		request.setAttribute("sub1", sub1);
		request.setAttribute("sub2", sub2);
		request.setAttribute("sub3", sub3);
		request.setAttribute("sub4", sub4);
		request.setAttribute("totalNeto", totalNeto);
		request.setAttribute("total", total);

		RequestDispatcher rd = request.getRequestDispatcher("Factura.jsp");
		rd.forward(request, response);
	}

}
