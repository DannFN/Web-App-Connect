package Controlador.Objetos;

import java.util.ArrayList;
/**
 *
 * @author Dann
 * @param <V>
 * @param <W>
 * @param <X>
 * @param <Y>
 * @param <Z>
 */
public class UsuarioE <V, W, X, Y, Z>{
  private int _IdUse;                                // Id usuario
  private String _NomUse;                            // Nombre usuario
  private String _ApePatUse;                         // Apellido paterno usuario
  private String _ApeMatUse;                         // Apellido materno usuario
  private String _EmailUse;                          // Correo electronico USuario
  private String _TelUse;                            // Telefono usuario
  private V _FotPerfUse;                             // Foto de perfil de usuario
  private W _SexUse;                                 // Sexo Usuario
  private X _EstResUse;                              // Estado de residencia de usuario
  private Y _MunResUse;                              // Municipio/delegación de residencia de usuario
  private String _PassUse;                           // Hash digest de contraseña de usuario
  private Z _AgeUse;                                 // Fecha de nacimiento del usuario o edad
  private String[] _HobUse;                          // Hobbies de usuario
  private ArrayList<Idioma> _IdiUse;                 // Idiomas que habla el usuario
  private ArrayList<Competencia> _ComProfUse;        // Competencias profesionales de usuario
  private ArrayList<Escuela> _EscUse;                // Escuelas de formación de usuario
  private ArrayList<PerfilProfesional> _PerProUse;   // Perfil profesional de usuario

  public UsuarioE(){
    //Empty constructor
  }

  public UsuarioE(int _IdUse, String _NomUse, String _ApePatUse, String _ApeMatUse, String _EmailUse, String _TelUse, V _FotPerfUse, W _SexUse, X _EstResUse, Y _MunResUse, String _PassUse, Z _AgeUse, String[] _HobUse, ArrayList<Idioma> _IdiUse, ArrayList<Competencia> _ComProfUse, ArrayList<Escuela> _EscUse, ArrayList<PerfilProfesional> _PerProUse) {
    this._IdUse = _IdUse;
    this._NomUse = _NomUse;
    this._ApePatUse = _ApePatUse;
    this._ApeMatUse = _ApeMatUse;
    this._EmailUse = _EmailUse;
    this._TelUse = _TelUse;
    this._FotPerfUse = _FotPerfUse;
    this._SexUse = _SexUse;
    this._EstResUse = _EstResUse;
    this._MunResUse = _MunResUse;
    this._PassUse = _PassUse;
    this._AgeUse = _AgeUse;
    this._HobUse = _HobUse;
    this._IdiUse = _IdiUse;
    this._ComProfUse = _ComProfUse;
    this._EscUse = _EscUse;
    this._PerProUse = _PerProUse;
  }

  public int getIdUse() {
    return _IdUse;
  }

  public void setIdUse(int _IdUse) {
    this._IdUse = _IdUse;
  }

  public String getNomUse() {
    return _NomUse;
  }

  public void setNomUse(String _NomUse) {
    this._NomUse = _NomUse;
  }

  public String getApePatUse() {
    return _ApePatUse;
  }

  public void setApePatUse(String _ApePatUse) {
    this._ApePatUse = _ApePatUse;
  }

  public String getApeMatUse() {
    return _ApeMatUse;
  }

  public void setApeMatUse(String _ApeMatUse) {
    this._ApeMatUse = _ApeMatUse;
  }

  public String getEmailUse() {
    return _EmailUse;
  }

  public void setEmailUse(String _EmailUse) {
    this._EmailUse = _EmailUse;
  }

  public String getTelUse() {
    return _TelUse;
  }

  public void setTelUse(String _TelUse) {
    this._TelUse = _TelUse;
  }

  public V getFotPerfUse() {
    return _FotPerfUse;
  }

  public void setFotPerfUse(V _FotPerfUse) {
    this._FotPerfUse = _FotPerfUse;
  }

  public W getSexUse() {
    return _SexUse;
  }

  public void setSexUse(W _SexUse) {
    this._SexUse = _SexUse;
  }

  public X getEstResUse() {
    return _EstResUse;
  }

  public void setEstResUse(X _EstResUse) {
    this._EstResUse = _EstResUse;
  }

  public Y getMunResUse() {
    return _MunResUse;
  }

  public void setMunResUse(Y _MunResUse) {
    this._MunResUse = _MunResUse;
  }

  public String getPassUse() {
    return _PassUse;
  }

  public void setPassUse(String _PassUse) {
    this._PassUse = _PassUse;
  }

  public Z getAgeUse() {
    return _AgeUse;
  }

  public void setAgeUse(Z _AgeUse) {
    this._AgeUse = _AgeUse;
  }

  public String[] getHobUse() {
    return _HobUse;
  }

  public void setHobUse(String[] _HobUse) {
    this._HobUse = _HobUse;
  }

  public ArrayList<Idioma> getIdiUse() {
    return _IdiUse;
  }

  public void setIdiUse(ArrayList<Idioma> _IdiUse) {
    this._IdiUse = _IdiUse;
  }

  public ArrayList<Competencia> getComProfUse() {
    return _ComProfUse;
  }

  public void setComProfUse(ArrayList<Competencia> _ComProfUse) {
    this._ComProfUse = _ComProfUse;
  }

  public ArrayList<Escuela> getEscUse() {
    return _EscUse;
  }

  public void setEscUse(ArrayList<Escuela> _EscUse) {
    this._EscUse = _EscUse;
  }

  public ArrayList<PerfilProfesional> getPerProUse() {
    return _PerProUse;
  }

  public void setPerProUse(ArrayList<PerfilProfesional> _PerProUse) {
    this._PerProUse = _PerProUse;
  }
}
