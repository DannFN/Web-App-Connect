package Controlador.Objetos;

/**
 *
 * @author Dann
 * @param <Z>
 */
public class PerfilProfesional <Z>{
  private int _IdPer;         // Identificador del perfil profesional del usuario  
  private String _PerPro;     // Perfil profesional del usuario
  private String _FotPerPro;  // Foto del perfil profesional 
  private Z _CatPerPro;       // Categoria del perfil profesional

  public PerfilProfesional() {
    //Empty constructor
  }

  public PerfilProfesional(int _IdPer, String _PerPro, String _FotPerPro, Z _CatPerPro) {
    this._IdPer = _IdPer;
    this._PerPro = _PerPro;
    this._FotPerPro = _FotPerPro;
    this._CatPerPro = _CatPerPro;
  }

  public int getIdPer() {
    return _IdPer;
  }

  public void setIdPer(int _IdPer) {
    this._IdPer = _IdPer;
  }

  public String getPerPro() {
    return _PerPro;
  }

  public void setPerPro(String _PerPro) {
    this._PerPro = _PerPro;
  }

  public String getFotPerPro() {
    return _FotPerPro;
  }

  public void setFotPerPro(String _FotPerPro) {
    this._FotPerPro = _FotPerPro;
  }

  public Z getCatPerPro() {
    return _CatPerPro;
  }

  public void setCatPerPro(Z _CatPerPro) {
    this._CatPerPro = _CatPerPro;
  }
  
}
