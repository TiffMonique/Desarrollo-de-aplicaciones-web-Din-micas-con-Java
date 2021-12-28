package com.ecamp;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Informacion
 */
@WebServlet("/Informacion")
public class Informacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Informacion() {
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
		
		
		String nombre;
		request.getAttribute("nombre" );
		String direccion;
		request.getAttribute("direccion");
		int cantidad1 = Integer.parseInt((String) request.getAttribute("cantidad1"));
		int cantidad2 = Integer.parseInt((String) request.getAttribute("cantidad2"));
		int cantidad3 = Integer.parseInt((String) request.getAttribute("cantidad3"));
		int cantidad4 = Integer.parseInt((String) request.getAttribute("cantidad4"));
		   
		   
		   
   

		
		RequestDispatcher rd = request.getRequestDispatcher("Respuesta");
		rd.forward(request, response);
		
	}

}
