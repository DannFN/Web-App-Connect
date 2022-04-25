/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function generatemap(id, id1, lat, long) {
  
  var parent = document.getElementById(id1);
  var child = document.getElementById(id);
  parent.removeChild(child);
  
  var para = document.createElement("div");
  var node = document.createTextNode(" ");
  para.setAttribute("id", id);
  para.setAttribute("class", "native-maps-offer-start")
  para.appendChild(node);
  
  parent.appendChild(para);
  
  // Inicializar el objeto de laplataforma  
  var platform = new H.service.Platform({
  'app_id': 'f9ehoHAZurbG4lduplAl',
  'app_code': 'GLj87n3q2Rpu97gjj_vpKQ'
  });

  // Obtener el tipo de mapa default:
  var maptypes = platform.createDefaultLayers();

  // Instancia y despliegue del mapa:
  var map = new H.Map(
  document.getElementById(id),
  maptypes.normal.map,
  {
    zoom: 10
  });

  // Habilitar los eventos de la instancia del mapa:
  var mapEvents = new H.mapevents.MapEvents(map);

  // Agregar event listener:
  map.addEventListener('tap', function(evt) {
    // Log eventos 'tap' y 'mouse':
    console.log(evt.type, evt.currentPointer.type); 
  });

  // Instanciar el comportamient default, proveyendo los eventos al mapa: 
  var behavior = new H.mapevents.Behavior(mapEvents);

  // Definir una variable utilizando un markup SVG que define el icono de la imagen:
  var svgMarkup = '<svg width="24" height="24" ' +
    'xmlns="http://www.w3.org/2000/svg">' +
    '<rect stroke="white" fill="#1b468d" x="1" y="1" width="22" ' +
    'height="22" /><text x="12" y="18" font-size="12pt" ' +
    'font-family="Arial" font-weight="bold" text-anchor="middle" ' +
    'fill="white">H</text></svg>';

  // Crear un icono, un objeto que contenga latitud y longitud , y un marcador:
  var icon = new H.map.Icon(svgMarkup),
    coords = {lat: lat, lng: long},
    marker = new H.map.Marker(coords, {icon: icon});

  // añadir el marcador al mapa y centrar el mapa en la locación:
  map.addObject(marker);
  map.setCenter(coords);
}


