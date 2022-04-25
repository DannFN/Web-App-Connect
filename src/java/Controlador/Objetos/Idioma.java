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
public class Idioma<Z> {
  private Z _Lang;
  private int _Dom;

  public Idioma() {
    //emty constructor
  }

  public Idioma(Z _Lang, int _Dom) {
    this._Lang = _Lang;
    this._Dom = _Dom;
  }

  public Z getLang() {
    return _Lang;
  }

  public void setLang(Z _Lang) {
    this._Lang = _Lang;
  }

  public int getDom() {
    return _Dom;
  }

  public void setDom(int _Dom) {
    this._Dom = _Dom;
  }
   
}
