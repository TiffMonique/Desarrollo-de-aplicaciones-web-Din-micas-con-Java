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

@WebServlet("/crearSesion")
public class CrearSesion extends HttpServlet{
	
	private static final long serialVersionUID= 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException , IOException {
		String usuario = req.getParameter("nombre");
		EntradasConcierto entrada = new EntradasConcierto();
		
		HttpSession session= req.getSession(true);
		PrintWriter writer = resp.getWriter();
		
		entrada.setTitularEntrada(usuario);
		entrada.setNombreArtista("Iron Maiden");
		entrada.setFechaConcierto(new Date());
		entrada.setUbicacion("Poliedro");
		session.setAttribute("datosCompra", entrada);
		
		
		writer.println("<html><body>");
		writer.println("<h1>Entradas para "+entrada.getNombreArtista()+"</h1>");
		writer.println("<h1>Entradas para "+entrada.getTitularEntrada()+"</h1>");
		writer.println("</body></html>");
	}
	

}
