package cl.edutecno.modelo;

import java.util.Date;

public class EntradasConcierto {
	
	private String titularEntrada;
	private String nombreArtista;
	private String ubicacion;
	private Date fechaConcierto;
	public String getTitularEntrada() {
		return titularEntrada;
	}
	public void setTitularEntrada(String titularEntrada) {
		this.titularEntrada = titularEntrada;
	}
	public String getNombreArtista() {
		return nombreArtista;
	}
	public void setNombreArtista(String nombreArtista) {
		this.nombreArtista = nombreArtista;
	}
	public String getUbicacion() {
		return ubicacion;
	}
	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}
	public Date getFechaConcierto() {
		return fechaConcierto;
	}
	public void setFechaConcierto(Date fechaConcierto) {
		this.fechaConcierto = fechaConcierto;
	}
	public EntradasConcierto(String titularEntrada, String nombreArtista, String ubicacion, Date fechaConcierto) {
		super();
		this.titularEntrada = titularEntrada;
		this.nombreArtista = nombreArtista;
		this.ubicacion = ubicacion;
		this.fechaConcierto = fechaConcierto;
	}
	public EntradasConcierto() {
		super();
	}
	

}
