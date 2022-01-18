package cl.edutecno;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Conexion {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		
		//Lista de objetos que devolveran los resultados
		List<Curso> listaDeCursos = new ArrayList<Curso>();
		
		//Conexion a la base de datos y ejercicios de la sentencia
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection conexion = null;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		conexion=DriverManager.getConnection(url,"system2","123");
		
		try {
			//Creacion de la tabla e insercion de datos
			Statement st = conexion.createStatement();
			
			st.executeUpdate("DROP TABLE CURSOS"); 
			st.executeQuery("CREATE TABLE CURSOS (id int,nombre varchar(30))"); 
			st.executeQuery("INSERT INTO CURSOS (id,nombre) values (1,'JAVA')");
			
			//Consulta a la base de Datos
			st = conexion.createStatement();
			ResultSet resultado=st.executeQuery("SELECT * FROM CURSOS");
		
			
			
			while(resultado.next()) {
				Curso curso = new Curso();
				curso.setId(resultado.getInt("id"));
				curso.setNombre(resultado.getString("nombre"));
				
				listaDeCursos.add(curso);
				
				
				
			}
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		System.out.println(listaDeCursos);
	}

}
