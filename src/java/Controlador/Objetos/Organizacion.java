package Controlador.Objetos;

import java.util.ArrayList;

/**
 *
 * @author Dann
 * @param <W>
 * @param <X>
 * @param <Y>
 * @param <Z>
 */
public class Organizacion<W, X, Y, Z> {
  private int _IdOrg;                      // Id d eorganización
  private String _NomOrg;                  // Nombre comercial de la organizacion
  private String _EmailOrg;                // Correo electronico de la organización
  private String _PassOrg;                 // Contraseña de la Organización
  private String _TelOrg;                  // Telefono de la organización
  private W _FotOrg;                       // Foto (Logo) de la organización
  private X _CatOrg;                       //Categoria de la organización
  private Y _EstUbiOrg;                    // Estado de ubicación de la organización
  private Z _MunUbiOrg;                    // Municipio/delegación de ubicación de la organización
  private String _DirUbiOrg;               // Complemento de la dirección de la organización
  private int _CodPost;                    // Codigo postal
  private String _Esl;                     // Eslogan de la organización
  private String _Des;                     // Descripción de la organización
  private String _Mis;                     // Misión de la organización
  private String _Vis;                     // Visión de la organización
  private String[] _Val;                   //Valores de la organización;
  private ArrayList<Representante> _Rep;   // Representante(s) de la organización

  public Organizacion() {
    //empty Constructor
  }

  public Organizacion(int _IdOrg, String _NomOrg, String _EmailOrg, String _PassOrg, String _TelOrg, W _FotOrg, X _CatOrg, Y _EstUbiOrg, Z _MunUbiOrg, String _DirUbiOrg, int _CodPost, String _Esl, String _Des, String _Mis, String _Vis, String[] _Val, ArrayList<Representante> _Rep) {
    this._IdOrg = _IdOrg;
    this._NomOrg = _NomOrg;
    this._EmailOrg = _EmailOrg;
    this._PassOrg = _PassOrg;
    this._TelOrg = _TelOrg;
    this._FotOrg = _FotOrg;
    this._CatOrg = _CatOrg;
    this._EstUbiOrg = _EstUbiOrg;
    this._MunUbiOrg = _MunUbiOrg;
    this._DirUbiOrg = _DirUbiOrg;
    this._CodPost = _CodPost;
    this._Esl = _Esl;
    this._Des = _Des;
    this._Mis = _Mis;
    this._Vis = _Vis;
    this._Val = _Val;
    this._Rep = _Rep;
  }

  public int getIdOrg() {
    return _IdOrg;
  }

  public void setIdOrg(int _IdOrg) {
    this._IdOrg = _IdOrg;
  }

  public String getNomOrg() {
    return _NomOrg;
  }

  public void setNomOrg(String _NomOrg) {
    this._NomOrg = _NomOrg;
  }

  public String getEmailOrg() {
    return _EmailOrg;
  }

  public void setEmailOrg(String _EmailOrg) {
    this._EmailOrg = _EmailOrg;
  }

  public String getPassOrg() {
    return _PassOrg;
  }

  public void setPassOrg(String _PassOrg) {
    this._PassOrg = _PassOrg;
  }

  public String getTelOrg() {
    return _TelOrg;
  }

  public void setTelOrg(String _TelOrg) {
    this._TelOrg = _TelOrg;
  }

  public W getFotOrg() {
    return _FotOrg;
  }

  public void setFotOrg(W _FotOrg) {
    this._FotOrg = _FotOrg;
  }

  public X getCatOrg() {
    return _CatOrg;
  }

  public void setCatOrg(X _CatOrg) {
    this._CatOrg = _CatOrg;
  }

  public Y getEstUbiOrg() {
    return _EstUbiOrg;
  }

  public void setEstUbiOrg(Y _EstUbiOrg) {
    this._EstUbiOrg = _EstUbiOrg;
  }

  public Z getMunUbiOrg() {
    return _MunUbiOrg;
  }

  public void setMunUbiOrg(Z _MunUbiOrg) {
    this._MunUbiOrg = _MunUbiOrg;
  }

  public String getDirUbiOrg() {
    return _DirUbiOrg;
  }

  public void setDirUbiOrg(String _DirUbiOrg) {
    this._DirUbiOrg = _DirUbiOrg;
  }

  public int getCodPost() {
    return _CodPost;
  }

  public void setCodPost(int _CodPost) {
    this._CodPost = _CodPost;
  }

  public String getEsl() {
    return _Esl;
  }

  public void setEsl(String _Esl) {
    this._Esl = _Esl;
  }

  public String getDes() {
    return _Des;
  }

  public void setDes(String _Des) {
    this._Des = _Des;
  }

  public String getMis() {
    return _Mis;
  }

  public void setMis(String _Mis) {
    this._Mis = _Mis;
  }

  public String getVis() {
    return _Vis;
  }

  public void setVis(String _Vis) {
    this._Vis = _Vis;
  }

  public String[] getVal() {
    return _Val;
  }

  public void setVal(String[] _Val) {
    this._Val = _Val;
  }

  public ArrayList<Representante> getRep() {
    return _Rep;
  }

  public void setRep(ArrayList<Representante> _Rep) {
    this._Rep = _Rep;
  }
}
   
