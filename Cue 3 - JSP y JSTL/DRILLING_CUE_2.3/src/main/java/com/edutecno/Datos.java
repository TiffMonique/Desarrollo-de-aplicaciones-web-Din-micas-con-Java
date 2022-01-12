package com.edutecno;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Datos
 */
@WebServlet("/Datos")
public class Datos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Datos() {
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
		String nombre = request.getParameter("nombre");
		String empresa = request.getParameter("empresa");
		String ciudad = request.getParameter("ciudad");
		String pais = request.getParameter("pais");

		int cantidad1 = Integer.parseInt(request.getParameter("cantidad1"));
		int cantidad2 = Integer.parseInt(request.getParameter("cantidad2"));
		int cantidad3 = Integer.parseInt(request.getParameter("cantidad3"));
		int cantidad4 = Integer.parseInt(request.getParameter("cantidad4"));

		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);

		request.setAttribute("cantidad1", cantidad1);
		request.setAttribute("cantidad2", cantidad2);
		request.setAttribute("cantidad3", cantidad3);
		request.setAttribute("cantidad4", cantidad4);

		RequestDispatcher rd = request.getRequestDispatcher("Vista");
		rd.forward(request, response);
	}

}
