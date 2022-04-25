package Controlador.Procesos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dann
 */
public class Conexion {

  private Connection con;
	
  public Conexion() {
    String cadena="jdbc:mysql://localhost:3306/connect";
    try {
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection(cadena,"root","n0m3l0");
    }catch (ClassNotFoundException ex) {
      System.out.println(ex.getMessage());
      Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
    }catch (SQLException ex) {
      System.out.println(ex.getMessage());
      Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
    }
  }
	
  public Connection getConnection(){
    return con;
  }
}
