/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Objetos;

/**
 *
 * @author elect
 * @param <Z>
 */
public class Competencia<Z> {
  private Z _Comp;
  private int _Dom;

  public Competencia() {
    //empty constructor
  }
   
  public Competencia(Z _Comp, int _Dom) {
    this._Comp = _Comp;
    this._Dom = _Dom;
  }

  public Z getComp() {
    return _Comp;
  }

  public void setComp(Z _Comp) {
    this._Comp = _Comp;
  }

  public int getDom() {
    return _Dom;
  }

  public void setDom(int _Dom) {
    this._Dom = _Dom;
  }
  
}
