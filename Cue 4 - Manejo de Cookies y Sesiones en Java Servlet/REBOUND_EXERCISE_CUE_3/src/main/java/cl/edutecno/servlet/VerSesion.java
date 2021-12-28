package cl.edutecno.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


import cl.edutecno.modelo.Producto;

/**
 * Servlet implementation class VerSesion
 */
@WebServlet("/verSesion")
public class VerSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession miSession= request.getSession();
		Producto entradas = (Producto) miSession.getAttribute("datosProducto");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html><body>");
		writer.println("<p>id: "+entradas.getId()+" ,");
		writer.println("<p>Concepto "+entradas.getConcepto()+" ,");
		writer.println("<p>Importe:  "+entradas.getImporte()+" ,");
		writer.println("<p>Datos del objeto producto generado manualmente en el servlet CrearSesion</p>");
		writer.println("</p></body></html>");
	}


}
