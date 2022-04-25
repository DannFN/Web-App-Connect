package Controlador.Objetos;

/**
 *
 * @author Dann
 * @param <Y>
 * @param <Z>
 */
public class Escuela <Y, Z>{
  private Y _Esc;             // Nombre de la escuela 
  private Z _Gra;             // Grado de Escuela 
  private String _Tit;        // Titulo Obtenido

  public Escuela() {
    //Empty Constructor
  }

  public Escuela(Y _Esc, Z _Gra, String _Tit) {
    this._Esc = _Esc;
    this._Gra = _Gra;
    this._Tit = _Tit;
  }

  public Y getEsc() {
    return _Esc;
  }

  public void setEsc(Y _Esc) {
    this._Esc = _Esc;
  }

  public Z getGra() {
    return _Gra;
  }

  public void setGra(Z _Gra) {
    this._Gra = _Gra;
  }

  public String getTit() {
    return _Tit;
  }

  public void setTit(String _Tit) {
    this._Tit = _Tit;
  }
  
}
