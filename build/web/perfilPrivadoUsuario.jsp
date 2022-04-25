<%-- 
    Document   : perfilPrivadoUsuario
    Created on : 21/11/2018, 12:25:08 AM
    Author     : elect
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
  <head>
    <title>Nombre del usuario</title>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1.0">
    <!--Estilos-->
    <link href="Css/W3/w3.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="Css/Native/General.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="Css/Native/Perfil.css"
          rel="stylesheet"
          type="text/css"/>  
    <link href="Css/Native/Inicio.css"
          rel="stylesheet"
          type="text/css"/>
    <!--Icons-->
    <link rel="stylesheet" 
          href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" 
          integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" 
          crossorigin="anonymous">
    <!--Scripts-->
    <script src="JavaScript/Native/Front-End.js" 
            type="text/javascript"></script>
    <script src="JavaScript/Native/Maps.js" 
            type="text/javascript"></script>
    <script src="http://js.api.here.com/v3/3.0/mapsjs-core.js"
            type="text/javascript" 
            charset="utf-8"></script>
    <script src="http://js.api.here.com/v3/3.0/mapsjs-service.js"
            type="text/javascript" 
            charset="utf-8"></script>
    <script src="http://js.api.here.com/v3/3.0/mapsjs-mapevents.js" 
            type="text/javascript" 
            charset="utf-8"></script>
  </head>
  
  <body class="native-bg-grey">
    
    <div class="w3-bar
           w3-top
           w3-card-4
           native-bg-gradient
           native-text-white
           native-padding-1">
        <span class="w3-bar-item 
              native-text-white">Connect</span>

        <form class="w3-hide-medium
              w3-hide-small">
          <input type="text"
                 class="
                 w3-round-small
                 w3-bar-item"
                 name="search"
                 placeholder="buscar"
                 required>
          <button type="submit"
                 class="w3-round-small
                 w3-bar-item">&#xf002;</button>
        </form>

        <form>
          <button class="w3-bar-item 
                  w3-btn
                  w3-right
                  w3-hide-small
                  w3-hide-medium
                  native-button-bar">
            <i class="fas 
               fa-sign-out-alt"></i> 
          </button>
        </form>

        <a href="#" 
           class="w3-bar-item 
           w3-btn
           w3-right
           w3-hide-small
           w3-hide-medium
           native-button-bar">
          <i class="fas 
             fa-cog"></i> 
        </a>

        <a href="#" 
           class="w3-bar-item 
           w3-btn
           w3-right
           w3-hide-small
           w3-hide-medium
           native-button-bar">
          <img src="Images/User_Male.jpg" 
               alt="foto de perfil usuario"> 
          Nombre
        </a>

        <a href="#" 
           class="w3-bar-item 
           w3-btn
           w3-right
           w3-hide-small
           w3-hide-medium
           native-button-bar">
          <i class="fas 
             fa-bookmark"></i> 
          Blog
        </a>

        <a href="#" 
           class="w3-bar-item 
           w3-btn
           w3-right
           w3-hide-small
           w3-hide-medium
           native-button-bar">
          <i class="fa 
             fa-home"></i> 
          Inicio
        </a>

        <a href="javascript:void(0)" 
           class="w3-bar-item 
           w3-btn
           w3-right
           w3-hide-large 
           native-button-bar" 
           onclick="colapsible()">&#9776;</a>

        <div id="colapsible" 
             class="w3-bar-block
             w3-hide 
             w3-hide-large 
             native-bg-gradient">

          <form>
            <input type="text"
                   class="w3-round-small
                   w3-bar-item"
                   name="search"
                   placeholder="insertar parametros de busqueda"
                   required>
            <input type="submit"
                   class="w3-round-small
                   w3-bar-item
                   w3-center"
                   value="Buscar">
          </form>

          <a href="#" 
             class="w3-bar-item 
             w3-btn
             native-button-bar">
            <img src="Images/User_Male.jpg" 
                 alt="foto de perfil usuario"> 
            Nombre
          </a>

          <a href="#" 
             class="w3-bar-item 
             w3-btn
             native-button-bar">
            <i class="fas 
               fa-bookmark"></i> 
            Blog
          </a>

          <a href="#" 
             class="w3-bar-item 
             w3-btn
             native-button-bar">
            <i class="fas 
               fa-cog"></i> 
            Ajustes
          </a>

          <form>
            <button class="w3-bar-item 
                    w3-btn
                    native-button-bar">
              <i class="fas 
                 fa-sign-out-alt"></i> 
              Cerrar sesión
            </button>
          </form>
        </div>
      </div>
    
    <div class="w3-bar
         native-padding-1">
      <!--Empty-->
      <span class="w3-bar-item
            native-text-white">&nbsp;</span>
    </div>  
    
    <div class="w3-row
         native-banner
         w3-display-container">
      <h1 class="w3-display-middle
          native-text-white
          w3-hide-medium
          w3-hide-small">Nombre del usuario y apellido paterno</h1>
    </div>
    
    <div class="w3-row
         w3-container">
      <div class="w3-col
           l1
           m2
           w3-hide-small">
        <!--empty-->
        &nbsp;
      </div>
      
      <div class="w3-col
           l3
           m8
           s12">
        <div class="w3-row
             w3-white
             w3-card-4
             native-circle-profile
             native-circle-profile-negative-margin">
          <img src="Images/User_Male.jpg" 
               alt="foto de perfil de usuario">
        </div>
        
        <div class="w3-row
             w3-center
             w3-hide-large">
          <br>
          <h3>Nombre y apellido</h3>
        </div>
        
        <div class="w3-row">
          <div class="w3-row">
            <h6>Información General</h6>
            <hr>
          </div>
          <div class="w3-row-padding">
            <div class="w3-col
                 l2
                 m4
                 s2">
              <i class="fas 
                 fa-phone
                 w3-right"
                 style="font-size: 25px"></i>
            </div>
            
            <div class="w3-col
                 l10
                 m8
                 s10">
              número telefonico
            </div>
          </div>
          
          <br>
          
          <div class="w3-row-padding">
            <div class="w3-col
                 l2
                 m4
                 s2">
              <i class="fas 
                 fa-at
                 w3-right"
                 style="font-size: 25px"></i>
            </div>
            
            <div class="w3-col
                 l10
                 m8
                 s10">
              correo electronico
            </div>            
          </div>
          
          <br>
          
          <div class="w3-row-padding">
            <div class="w3-col
                 l2
                 m4
                 s2">
              <i class="fas 
                 fa-map-marker-alt
                 w3-right"
                 style="font-size: 25px"></i>
            </div>
            
            <div class="w3-col
                 l10
                 m8
                 s10">
              localidad de residencia
            </div>            
          </div>
          
          <br>
          
          <div class="w3-row-padding
               w3-center">
            <form>
              <input type="submit"
                     class="w3-btn
                     w3-medium
                     native-button-blue"
                     value="Generar CV">
            </form>          
          </div>
        </div>
        
        <div class="w3-hide-large">
          <br><br>
        </div>
      </div>
      
      <div class="w3-col
           l1
           m2
           w3-hide-small">
        <!--empty-->
        &nbsp;
      </div>
      
      <div class="w3-col
           l8
           m12
           s12
           w3-container">
        <div class="w3-row">
          <a href="javascript:void(0)"
             onclick="openTab(event, 'personalInf');">
            <div class="w3-col
                 l6
                 m6
                 s12
                 tablink 
                 w3-bottombar 
                 w3-border-blue
                 w3-padding">Información Curricular</div>
          </a>
          
          <a href="javascript:void(0)" 
             onclick="openTab(event, 'solitude');">
            <div class="w3-col
                 l6
                 m6
                 s12 
                 tablink 
                 w3-bottombar 
                 w3-padding">Solicitudes</div>
          </a>
        </div>
        
        <div id="personalInf" 
             class="tabs
             w3-row">
          <div class="w3-row
               w3-col">
            <!--Perfil profesional-->
            <div class="native-profiles-container
                 w3-white">
              <div class="native-banner-profiles
                   native-bg-category-2
                   native-padding-1">
                
                <h5 class="native-text-white
                    native-text-shadow
                    w3-center
                    w3-hide-small">Perfil Profesional: Categoria</h5>
                    
                <h6 class="native-text-white
                    native-text-shadow
                    w3-center
                    w3-hide-large
                    w3-hide-medium">Perfil Profesional: Categoria</h6>
                    
              </div>
              <div class="w3-row
                   w3-container
                   native-padding-1">
                <p>
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
                  eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
                  reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                  pariatur. Excepteur sint occaecat cupidatat non proident, sunt in 
                  culpa qui officia deserunt mollit anim id est laborum...."
                </p>
              </div>
            </div>
            
            <br>
            
            <div class="w3-row
                 w3-center">
              <a class="w3-btn
                 w3-medium
                 native-button-green"
                 onclick="hideOfferDetails('modalPerfil');">Añadir Perfil profesional</a>
            </div>
            <br>
          </div>
          
          <div class="w3-row">
            <div class="w3-container
                 w3-white
                 w3-padding-16">
              <div class="w3-col">
                <h5 class="w3-hide-small">Formación academica</h5>
                <h6 class="w3-hide-large
                    w3-hide-medium">Formación academica</h6>
                <hr>
              </div>
              
              <div class="w3-row
                   w3-container
                   native-padding-1">
                <div class="w3-col
                     l2
                     m2
                     s2">
                  <i class="fas 
                     fa-graduation-cap"
                     style="font-size: 25px;"></i>
                </div>
                
                <div class="w3-col
                     l10
                     m10
                     s10">
                  <b>Escuela</b>
                  <p>Titulo</p>
                </div>
              </div>              
            </div>
          </div>
          
          <br>
          
          <div class="w3-row">
            <div class="w3-container
                 w3-white
                 w3-padding-16">
              <div class="w3-col">
                <h5 class="w3-hide-small">Idiomas</h5>
                <h6 class="w3-hide-large
                    w3-hide-medium">Idiomas</h6>
                <hr>
              </div>
              
              <div class="w3-row
                   w3-container
                   native-padding-1">
                <div class="w3-col
                     l2
                     m2
                     s2">
                  <i class="fas 
                     fa-globe-americas"
                     style="font-size: 25px;"></i>
                </div>
                
                <div class="w3-col
                     l10
                     m10
                     s10">
                  <b>Idioma</b>
                  <div class="w3-border
                       w3-round-small">
                    <div class="w3-blue
                         w3-center
                         native-text-white
                         w3-round-small" 
                         style="height:24px;
                         width:20%">20%</div>
                  </div>
                </div>
              </div>              
            </div>
          </div>
          
          <br>
          
          <div class="w3-row">
            <div class="w3-container
                 w3-white
                 w3-padding-16">
              <div class="w3-col">
                <h5 class="w3-hide-small">Competencias Profesionales</h5>
                <h6 class="w3-hide-large
                    w3-hide-medium">competencias profesionales</h6>
                <hr>
              </div>
              
              <div class="w3-row
                   w3-container
                   native-padding-1">
                <div class="w3-col
                     l2
                     m2
                     s2">
                  <i class="far 
                     fa-check-square"
                     style="font-size: 25px;"></i>
                </div>
                
                <div class="w3-col
                     l10
                     m10
                     s10">
                  <b>Competencia</b>
                  <div class="w3-border
                       w3-round-small">
                    <div class="w3-blue
                         w3-center
                         native-text-white
                         w3-round-small" 
                         style="height:24px;
                         width:20%">20%</div>
                  </div>
                </div>
              </div>              
            </div>
          </div>
          
          <br>
          
          <div class="w3-row">
            <div class="w3-container
                 w3-white
                 w3-padding-16">
              <div class="w3-col">
                <h5 class="w3-hide-small">Hobbies y deportes</h5>
                <h6 class="w3-hide-large
                    w3-hide-medium">Hobbies y deportes</h6>
                <hr>
              </div>
              
              <div class="w3-row
                   w3-container
                   native-padding-1">
                <div class="w3-col
                     l2
                     m2
                     s2">
                  <i class="far 
                     fa-heart"
                     style="font-size: 25px;"></i>
                </div>
                
                <div class="w3-col
                     l10
                     m10
                     s10">
                  <b>Hobbie</b>
                </div>
              </div>              
            </div>
          </div>
                   
        </div>
        
        <div id="solitude" 
             class="w3-row
             tabs" 
             style="display:none">
          <div class="w3-row">
            <h5>&nbsp;</h5>
          </div>
          
          <div class="w3-row
               w3-center">
            
            <!--Contenedor oferta solicitada-->
            <div id="TODO_insertar_id_de_la_oferta"
                 class="native-container-offer
                 w3-white">
              <div class="w3-row
                   native-banner-offer
                   native-bg-category-2">
                <!--TODO imagen categoria oferta-->
              </div>
              <div class="w3-row
                   w3-border
                   w3-white
                   native-circle-offer">
                <img src="Images/User_Organization.jpg" 
                     alt="Foto de perfil de la organización">
              </div>
              <div class="w3-row
                   w3-center
                   native-small-font-offer">
                <a><b>Nombre de la empresa</b></a>
                <br>
                <small>categoria de la empresa</small>
                <h6>Oferta</h6>
                <a class="native-text-blue
                   native-cursor-pointer"
                   onclick="hideOfferDetails('modal'); 
                     generatemap('TODO_insertar_id_de_la_oferta_MAP', location0, 19.4978, -99.1269);">
                  <b>ver más</b>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <div id="modalPerfil"
           class="w3-display-middle
           w3-hide
           native-modal-background">
        <div class="w3-row-padding
             w3-col
             l4
             m11
             s11
             w3-container
             w3-white
             w3-padding-16
             w3-display-middle
             native-offers-container">
          <div class="w3-hide-large">
            <br><br>
            <h1>&nbsp;</h1>
          </div>
          <div class="w3-hide-large
               w3-hide-medium">
            <br><br>
            <h1>&nbsp;</h1>
          </div>
          
          <div class="w3-row">
            <h6>Añadir Perfil Profesional</h6>    
          </div>
          <div class="w3-row">
            <form>
              <label for="catProf">Categoría</label>
              <select class="w3-input
                      w3-round-small"
                      id="catProf"
                      name="catProf"
                      required>
                <option disabled
                        hidden
                        value=""
                        selected>Seleccionar</option>
              </select>

              <br>

              <textarea class="w3-input
                        w3-round-small"
                        id="textProf"
                        name="textProf"
                        placeholder="Perfil Profesional"
                        required></textarea>

              <br>  
              
              <div class="w3-row
                   w3-center">
                <input type="submit"
                       class="w3-btn
                       w3-medium
                       native-button-green"
                       value="Añadir">
                
                <br><br>
                
                <a class="native-text-blue
                   native-cursor-pointer"
                   onclick="hideOfferDetails('modalPerfil');">
                  <b>cerrar</b>
                </a>
              </div>
            </form>
          </div> 
        </div>
      </div>
      
    </div>
    <div>
      <br><br>
    </div>
  </body>
</html>
