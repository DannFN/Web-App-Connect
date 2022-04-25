package Controlador.Objetos;

/**
 *
 * @author dann
 */
public class Representante {
  private int _IdRep;         // Identificador de representante
  private String _NomRep;     // Nombre(s) del representante 
  private String _ApePatRep;  // Apellido paterno del representante
  private String _EmailRep;   // Correo electronico del representante
  private String _CarRep;     // Cargo del representante
  private String _FotRep;     // Foto del representante

  public Representante() {
    _IdRep = 0;
    _NomRep = "";
    _ApePatRep = "";
    _EmailRep = "";
    _CarRep = "";
    _FotRep = "";
  }

  public Representante(int _IdRep, String _NomRep, String _ApePatRep, String _EmailRep, String _CarRep, String _FotRep) {
    this._IdRep = _IdRep;
    this._NomRep = _NomRep;
    this._ApePatRep = _ApePatRep;
    this._EmailRep = _EmailRep;
    this._CarRep = _CarRep;
    this._FotRep = _FotRep;
  }

  public int getIdRep() {
    return _IdRep;
  }

  public void setIdRep(int _IdRep) {
    this._IdRep = _IdRep;
  }
  
  public String getNomRep() {
    return _NomRep;
  }

  public void setNomRep(String _NomRep) {
    this._NomRep = _NomRep;
  }

  public String getApePatRep() {
    return _ApePatRep;
  }

  public void setApePatRep(String _ApePatRep) {
    this._ApePatRep = _ApePatRep;
  }

  public String getEmailRep() {
    return _EmailRep;
  }

  public void setEmailRep(String _EmailRep) {
    this._EmailRep = _EmailRep;
  }

  public String getCarRep() {
    return _CarRep;
  }

  public void setCarRep(String _CarRep) {
    this._CarRep = _CarRep;
  }

  public String getFotRep() {
    return _FotRep;
  }

  public void setFotRep(String _FotRep) {
    this._FotRep = _FotRep;
  }
}
