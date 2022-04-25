package Controlador.Procesos;

import Controlador.Objetos.Competencia;
import Controlador.Objetos.Escuela;
import Controlador.Objetos.UsuarioE;
import Controlador.Objetos.Idioma;
import Controlador.Objetos.Oferta;
import Controlador.Objetos.PerfilProfesional;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author Dann
 */
public class AccionesUsuarioE {
  private final Connection con;
  
  public AccionesUsuarioE(){
    Conexion conn = new Conexion();
    con = conn.getConnection();
  }
   
  public int registrarUsuario(UsuarioE e){
    int estado;
    
    try{
      String sql = "";
      PreparedStatement ps;
      ResultSet rs;
      Cifrado ciph;
      ciph = new Cifrado();
      
      sql = "SELECT * FROM MInicioSesionUsuario WHERE CorreoElectronico = ?;";
      ps = con.prepareStatement(sql);
      ps.setString(1, e.getEmailUse());
      rs = ps.executeQuery();
      
      if(rs.next()){
        estado = -15;
        System.out.println("Registros Duplicados");
      }else {
        sql = "CALL RegistroUsuario(?,?,?,?,?,?,?,?,?);";
        ps = con.prepareStatement(sql);
        ps.setString(1, e.getEmailUse());
        ps.setString(2, ciph.hashPass(e.getPassUse()));
        ps.setString(3, e.getNomUse());
        ps.setString(4, e.getApePatUse());
        ps.setString(5, e.getApeMatUse());
        ps.setString(6, (String) e.getFotPerfUse());
        ps.setString(7, e.getTelUse());
        ps.setString(8, (String) e.getAgeUse());
        ps.setInt(9, (int) e.getSexUse());

        estado = ps.executeUpdate();

        System.out.println("Registro Exitoso");
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

  public UsuarioE consultarDatosUsuario(UsuarioE u){
    UsuarioE e = new UsuarioE();
    
    try{
      String sql;
      PreparedStatement ps;
      ResultSet rs;
      
      sql = "SELECT * FROM VWInformacionUsuario WHERE CorreoElectronico = ?;";
      ps = con.prepareStatement(sql);
      ps.setString(1, u.getEmailUse());
      rs = ps.executeQuery();
      
      while(rs.next()) {
        e.setEmailUse(rs.getString(2));
        e.setPassUse(rs.getString(3));
        e.setNomUse(rs.getString(4));
        e.setApePatUse(rs.getString(5));
        e.setApeMatUse(rs.getString(6));
        e.setTelUse(rs.getString(7));
        e.setFotPerfUse(rs.getString(8));
        e.setHobUse(rs.getString(10).split(";#;"));
        e.setAgeUse(rs.getInt(11));
        e.setSexUse(rs.getString(12));
        e.setEstResUse(rs.getString(13));
        e.setMunResUse(rs.getString(14));
      }
      
      sql = "SELECT * FROM VWIdiomasUsuario WHERE IdUsuario = ?;";
      ps = con.prepareStatement(sql);
      ps.setInt(1, e.getIdUse());
      rs = ps.executeQuery();
      
      ArrayList<Idioma> i = new ArrayList<>();
      Idioma<String> l;
      
      if(rs.next()){
        do {
          l = new Idioma();
          
          l.setLang(rs.getString(2));
          l.setDom(rs.getInt(3));
          
          i.add(l);
        }while(rs.next()); 
      }else {
        l = new Idioma();
          
        l.setLang("Sin idiomas que mostrar");
        l.setDom(0);

        i.add(l);
      }
      
      e.setIdiUse(i);
      
      sql = "SELECT * FROM VWCompetenciasUsuario WHERE IdUsuario = ?;";
      ps = con.prepareStatement(sql);
      ps.setInt(1, e.getIdUse());
      rs = ps.executeQuery();
      
      ArrayList<Competencia> c = new ArrayList<>();
      Competencia<String> co;
      
      if(rs.next()){
        do {
          co = new Competencia();
          
          co.setComp(rs.getString(2));
          co.setDom(rs.getInt(3));
          
          c.add(co);
        }while(rs.next()); 
      }else {
        co = new Competencia();
          
        co.setComp("sin Competencias que mostrar");
        co.setDom(0);

        c.add(co);
      }
      
      e.setComProfUse(c);
      
      sql = "SELECT * FROM VWEscuelaGradoTitulo WHERE IdUsuario = ?;";
      ps = con.prepareStatement(sql);
      ps.setInt(1, e.getIdUse());
      rs = ps.executeQuery();
      
      ArrayList<Escuela> es = new ArrayList<>();
      Escuela<String, String> esc;
      
      if(rs.next()){
        do {
          esc = new Escuela();
          
          esc.setEsc(rs.getString(2));
          esc.setGra(rs.getString(3));
          esc.setTit(rs.getString(4));
          
          es.add(esc);
        }while(rs.next()); 
      }else {
        esc = new Escuela();
          
        esc.setEsc("sin escuelas que mostrar");
        esc.setGra(" ");
        esc.setTit(" ");

        es.add(esc);
      }
      
      e.setEscUse(es);
      
      sql = "SELECT * FROM VWPerfilesUsuario WHERE IdUsuario = ?;";
      ps = con.prepareStatement(sql);
      ps.setInt(1, e.getIdUse());
      rs = ps.executeQuery();
      
      ArrayList<PerfilProfesional> p = new ArrayList<>();
      PerfilProfesional<String> per;
      
      if(rs.next()){
        do {
          per = new PerfilProfesional();
          
          per.setIdPer(rs.getInt(2));
          per.setCatPerPro(rs.getString(3));
          per.setFotPerPro(rs.getString(4));
          per.setPerPro(rs.getString(5));
          
          p.add(per);
        }while(rs.next()); 
      }else {
        per = new PerfilProfesional();
          
          per.setIdPer(0);
          per.setCatPerPro(" ");
          per.setFotPerPro(" "); //TODO fotos 
          per.setPerPro("Aún no cuentas con perfiles profesionales, añade algunos para comenzar a buscar ofertas");
          
          p.add(per);
      }
      
      System.out.println("Consulta Exitosa");
    }catch(SQLException d){
      System.out.println("Consulta Fallida");
      System.out.println(d.getMessage());
    } catch (Exception ex) {
      System.out.println("Consulta fallida");
      System.out.println(ex.getMessage());
    }
    
    return e;
  }
  
  public ArrayList<Oferta> consultarOfertas(UsuarioE u) {
    try{
      String sql = "";
      PreparedStatement ps;
      ResultSet rs;
      Cifrado ciph;
      ciph = new Cifrado();

      ArrayList<PerfilProfesional> per = u.getComProfUse();
      
      for(PerfilProfesional o: per) {
        sql = "SELECT * FROM VWOferta WHERE Categoria = ?;";
        ps = con.prepareStatement(sql);
        ps.setString(1, u.getEmailUse());
        rs = ps.executeQuery();
      }
      
    }catch(SQLException d){
      System.out.println("Registro Fallido");
      System.out.println(d.getMessage());
    } catch (Exception ex) {
      System.out.println("Registro Fallido");
      System.out.println(ex.getMessage());
    }
    
    return null;
  }
  
  public void cerrarCon() {
    try {
      con.close();
    } catch (SQLException ex) {
      System.out.println(ex.getMessage());
    }
  }
}
