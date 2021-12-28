package cl.edutecno.server;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import cl.edutecno.modelo.EntradasConcierto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/obtieneSesion")
public class ObtieneSesion  extends HttpServlet{
	
private static final long serialVersionUID= 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException , IOException {
		
		
		HttpSession miSession= req.getSession();
		EntradasConcierto entradas = (EntradasConcierto) miSession.getAttribute("datosCompra");
		PrintWriter writer = resp.getWriter();
		
		writer.println("<html><body>");
		writer.println("<h1>Entradas para "+entradas.getNombreArtista()+"</h1>");
		writer.println("<h1>Entradas para "+entradas.getTitularEntrada()+"</h1>");
		writer.println("</body></html>");
	}
	

}
