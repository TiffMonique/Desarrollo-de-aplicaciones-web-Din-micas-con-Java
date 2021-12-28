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
 * Servlet implementation class CrearSesion
 */
@WebServlet("/crearSesion")
public class CrearSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Producto miproducto = new Producto(1, "iPhone", 1000);
		PrintWriter pw = response.getWriter();
		pw.println("<html><body>Producto en session</body></html>");
		
		
		
		HttpSession session= request.getSession(true);
		session.setAttribute("datosProducto", miproducto);
		
		
	
	}

	

}
