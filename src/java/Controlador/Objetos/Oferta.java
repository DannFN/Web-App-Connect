/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Objetos;

import java.util.ArrayList;

/**
 *
 * @author Dann
 */
public class Oferta extends Organizacion{
  private int _IdOfe;
  private double _PagOfe;
  private double _Lat;
  private double _Lon;
  private String _PerPagOfe;
  private String _Ofe;
  private String _DesOfe; 
  private String[] _BenOfe;
  private String[] _CompOfe;

  public Oferta() {
    //Constructor Vacio
  }

  public Oferta(int _IdOfe, double _PagOfe, double _Lat, double _Lon, String _PerPagOfe, String _Ofe, String _DesOfe, String[] _BenOfe, String[] _CompOfe, int _IdOrg, String _NomOrg, String _EmailOrg, String _PassOrg, String _TelOrg, Object _FotOrg, Object _CatOrg, Object _EstUbiOrg, Object _MunUbiOrg, String _DirUbiOrg, int _CodPost, String _Esl, String _Des, String _Mis, String _Vis, String[] _Val, ArrayList _Rep) {
    super(_IdOrg, _NomOrg, _EmailOrg, _PassOrg, _TelOrg, _FotOrg, _CatOrg, _EstUbiOrg, _MunUbiOrg, _DirUbiOrg, _CodPost, _Esl, _Des, _Mis, _Vis, _Val, _Rep);
    this._IdOfe = _IdOfe;
    this._PagOfe = _PagOfe;
    this._Lat = _Lat;
    this._Lon = _Lon;
    this._PerPagOfe = _PerPagOfe;
    this._Ofe = _Ofe;
    this._DesOfe = _DesOfe;
    this._BenOfe = _BenOfe;
    this._CompOfe = _CompOfe;
  }

  public int getIdOfe() {
    return _IdOfe;
  }

  public void setIdOfe(int _IdOfe) {
    this._IdOfe = _IdOfe;
  }

  public double getPagOfe() {
    return _PagOfe;
  }

  public void setPagOfe(double _PagOfe) {
    this._PagOfe = _PagOfe;
  }

  public double getLat() {
    return _Lat;
  }

  public void setLat(double _Lat) {
    this._Lat = _Lat;
  }

  public double getLon() {
    return _Lon;
  }

  public void setLon(double _Lon) {
    this._Lon = _Lon;
  }

  public String getPerPagOfe() {
    return _PerPagOfe;
  }

  public void setPerPagOfe(String _PerPagOfe) {
    this._PerPagOfe = _PerPagOfe;
  }

  public String getOfe() {
    return _Ofe;
  }

  public void setOfe(String _Ofe) {
    this._Ofe = _Ofe;
  }

  public String getDesOfe() {
    return _DesOfe;
  }

  public void setDesOfe(String _DesOfe) {
    this._DesOfe = _DesOfe;
  }

  public String[] getBenOfe() {
    return _BenOfe;
  }

  public void setBenOfe(String[] _BenOfe) {
    this._BenOfe = _BenOfe;
  }

  public String[] getCompOfe() {
    return _CompOfe;
  }

  public void setCompOfe(String[] _CompOfe) {
    this._CompOfe = _CompOfe;
  }
    
}
