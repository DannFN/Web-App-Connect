package Controlador.Procesos;

import Controlador.Objetos.Organizacion;
import Controlador.Objetos.Representante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Dann
 */
public class AccionesOrganizacion {
  private final Connection con;
  
  public AccionesOrganizacion(){
    Conexion conn = new Conexion();
    con = conn.getConnection();
  }
  
  public int registrarOrganizacion(Organizacion o, Representante r) {
    int estado;
    
    try{
      String sql = "";
      PreparedStatement ps;
      ResultSet rs;
      Cifrado ciph;
      ciph = new Cifrado();
      
      sql = "SELECT * FROM MInicioSesionOrganizacion WHERE CorreoElectronico = ?;";
      ps = con.prepareStatement(sql);
      ps.setString(1, o.getEmailOrg());
      rs = ps.executeQuery();
      
      if(rs.next()){
        estado = -15;
        System.out.println("Registros Duplicados");
      }else {
        sql = "CALL RegistroOrganizacion(?,?,?,?,?,?,?,?,?,?);";
        ps = con.prepareStatement(sql);
        ps.setString(1, o.getEmailOrg());
        ps.setString(2, ciph.hashPass(o.getPassOrg()));
        ps.setString(3, o.getNomOrg());
        ps.setString(4, (String) o.getFotOrg()); 
        ps.setString(5, o.getTelOrg());
        ps.setInt(6, (int) o.getEstUbiOrg());
        ps.setInt(7, (int) o.getMunUbiOrg());
        ps.setString(8, o.getDirUbiOrg());
        ps.setInt(9, o.getCodPost());
        ps.setInt(10, (int) o.getCatOrg());
        
        estado = ps.executeUpdate();
        
        sql = "SELECT IdOrganizacion FROM MinicioSesionOrganizacion WHERE CorreoElectronico = ?;";
        ps = con.prepareStatement(sql);
        ps.setString(1, o.getEmailOrg());
        rs = ps.executeQuery();
        
        while(rs.next()) {
          o.setIdOrg(rs.getInt(1));
        }
        
        sql = "CALL IngresarRepresentante(?,?,?,?,?,?);" ;
        ps = con.prepareStatement(sql);
        ps.setInt(1, o.getIdOrg());
        ps.setString(2, r.getNomRep());
        ps.setString(3, r.getApePatRep());
        ps.setString(4, r.getEmailRep());
        ps.setString(5, r.getCarRep());
        ps.setString(6, r.getFotRep());

        estado += ps.executeUpdate();
        
        if(estado > 1){
          System.out.println("Registro Exitoso");
        }
        
      }

    }catch(SQLException d){
      System.out.println("Registro Fallido");
      System.out.println(d.getMessage());
      estado = 0;
    } catch (Exception ex) {
      System.out.println("Registro Fallido");
      System.out.println(ex.getMessage());
      estado = 0;
    }

    return estado;
  }
  
}
