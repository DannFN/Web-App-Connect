<%-- 
    Document   : perfilPublicoOrganizacion
    Created on : 21/11/2018, 12:25:43 AM
    Author     : elect
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Nombre de la organización</title>
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
    
    <!--Barras-->
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
          <img src="Images/User_Organization.jpg" 
               alt="foto de perfil organiación"> 
          Nombre
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
                   placeholder="ingresar parametros de busqueda"
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
            <img src="Images/User_Organization.jpg" 
                 alt="foto de perfil usuario"> 
            Organización
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
    
    <!--Sidebar 2-->
    <div id="sidebar2"
         class="w3-row-padding
         w3-container
         w3-white
         w3-padding-16
         w3-sidebar
         w3-card
         w3-display-container
         w3-animate-left
         native-offers-container"
         style="display: none;">
      <div class="w3-hide-large
           w3-hide-medium">
        <br><br>
        <h1>&nbsp;</h1>
      </div>
      <div class="w3-hide-large
           w3-hide-medium">
        <br><br>
        <h1>&nbsp;</h1>
      </div>

      <div class="w3-col">
        <h4>Oferta</h4>
      </div>

      <div class="w3-col
           l6
           m12
           s12">
        <div class="w3-row">
          <p class="native-text-blue"><b>Salario</b></p>
          <p>1000000 mxn al mes alv</p>
        </div>

        <br>

        <div class="w3-row">
          <p class="native-text-blue"><b>Descripción</b></p>
          <p>Descripción</p>
        </div>

        <br>

        <div id="location0" 
             class="w3-row">
          <p class="native-text-blue"><b>Ubicación</b></p>
          <div id="map"
               class="native-maps-offer-start"></div>
        </div>
      </div>

      <div class="w3-col
           l6
           m12
           s12">
        <div class="w3-col
             l12
             m6
             s6">
          <p class="native-text-blue"><b>Beneficios</b></p>
          <ul>
            <li>Beneficio 1</li>
            <li>Beneficio 2</li>
            <li>y así :v</li><!--viene de un String que hay que splitear a String[]-->
          </ul>
        </div>

        <br>

        <div class="w3-col
             l12
             m6
             s6">
          <p class="native-text-blue"><b>Competencias requeridas</b></p>
          <ul>
            <li>Competencia 1</li>
            <li>Competencia 2</li>
            <li>y así :v</li><!--viene de un String que hay que splitear a String[]-->
          </ul>
        </div>
      </div>

      <div class="w3-row
           w3-center">
        <form>
          <input type="number"
                 hidden
                 name="idOffer"
                 value="0"><!--TODO value = idOferta-->
          
          <input type="number"
                 hidden
                 name="idUser"
                 value="0"><!--TODO value = idUsuario-->

          <br><br>

          <input type="submit"
                 class="w3-btn
                 w3-medium
                 native-button-green"
                 value="Aplicar para la vacante">    
        </form>          
      </div>

      <br><br>

      <div class="w3-row
           w3-center
           w3-display-topright"
           style="margin: 0.5rem;">
        <a class="native-text-blue
           native-cursor-pointer"
           onclick="sidebarClose('main', 'sidebar2');">
          <b>X</b>
        </a>
      </div>

      <div class="w3-hide-large">
        <br><br>
      </div>
    </div>
        
    <!--Contenedor principal-->
    <div id="main"
         style="width: 100vw;">
      <!--contenedor Banner-->
      <div class="w3-row
           native-banner-organization
           w3-padding-24">
        <div class="w3-row"
             style="width: 100%;">
          <div class="w3-col
               l4
               m12
               s12
               w3-container">
            <div class="w3-row
                 w3-white
                 w3-card-4
                 native-circle-profile">
              <img src="Images/User_Organization.jpg" 
                   alt="foto de perfil de organización">
            </div>
          </div>

          <div class="w3-col
               l8
               m12
               s12
               w3-container"
               style="height: 100%;">
              <h1 class="native-text-white">Organización</h1>
              <h4 class="native-text-white"><i>Eslogan</i></h4>
              <h5>Categoría de la organización</h5>
              <p class="w3-hide-medium 
                 w3-hide-small">
                   Descripción
                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed 
                   do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                   Ut enim ad minim veniam, quis nostrud exercitation ullamco 
                   laboris nisi ut aliquip ex ea commodo consequat. Duis aute 
                   irure dolo."
              </p>
          </div>
        </div>
      </div>
    
      <!--contenedor resto de información-->
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
                Dirección de la organización
              </div>            
            </div>
          </div>

          <div class="w3-hide-large">
            <br><br>
          </div>
        </div>

        <div class="w3-col
             l8
             m12
             s12
             w3-container">
          <div class="w3-row">
            <a href="javascript:void(0)"
               onclick="openTab(event, 'orgInf');">
              <div class="w3-col
                   l4
                   m4
                   s12
                   tablink 
                   w3-bottombar 
                   w3-border-blue
                   w3-padding">Acerca de</div>
            </a>

            <a href="javascript:void(0)" 
               onclick="openTab(event, 'offers');">
              <div class="w3-col
                   l4
                   m4
                   s12 
                   tablink 
                   w3-bottombar 
                   w3-padding">Ofertas publicadas</div>
            </a>

            <a href="javascript:void(0)" 
               onclick="openTab(event, 'articles');">
              <div class="w3-col
                   l4
                   m4
                   s12 
                   tablink 
                   w3-bottombar 
                   w3-padding">Articulos publicados</div>
            </a>
          </div>

          <div id="orgInf" 
               class="tabs
               w3-row">
            <div class="w3-row
                 w3-panel">
              <div class="w3-container
                   w3-white
                   w3-padding-16">
                <div class="w3-row">
                  <h5 class="w3-hide-small">Representante(s) de la organización</h5>
                  <h6 class="w3-hide-large
                      w3-hide-medium">Representante(s) de la organización</h6>
                  <hr>
                </div>

                <div class="w3-row
                     w3-center">
                  <div class="w3-card
                       native-container-person">
                    <div class="w3-row
                         native-banner-person">
                      <!--TODO imagen personas-->
                    </div>

                    <div class="w3-row
                         w3-border
                         w3-white
                         native-circle-person">
                      <img src="Images/User_Male.jpg" 
                           alt="foto de representante">
                    </div>
                    <div>
                      <a><b>Nombre Apellido</b></a>
                      <br>
                      <small>Correo electronico</small>
                      <h6>Cargo en la organización</h6>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="w3-row
                 w3-hide-large
                 w3-panel">
              <div class="w3-container
                   w3-white
                   w3-padding-16">
                <div class="w3-col">
                  <h5 class="w3-hide-small">Acerca de la organización</h5>
                  <h6 class="w3-hide-large
                      w3-hide-medium">Acerca de la organización</h6>
                  <hr>
                </div>

                <div class="w3-row-padding">
                  <div class="w3-col
                       l8
                       m12
                       s12
                       w3-container"
                       style="height: 100%;">
                      <p class="w3-hide-large">
                           Descripción
                           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed 
                           do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                           Ut enim ad minim veniam, quis nostrud exercitation ullamco 
                           laboris nisi ut aliquip ex ea commodo consequat. Duis aute 
                           irure dolo."
                      </p>
                  </div>
                </div>
              </div>
            </div>

            <div class="w3-row
                 w3-panel">
              <div class="w3-container
                   w3-white
                   w3-padding-16">
                <div class="w3-col">
                  <h5 class="w3-hide-small">Misión y Visión</h5>
                  <h6 class="w3-hide-large
                      w3-hide-medium">Misión y Visión</h6>
                  <hr>
                </div>

                <div class="w3-row-padding">
                  <div class="w3-col
                       l6
                       m6
                       s12">
                    <b>Misión:</b>
                    <p>
                      Descripción "Lorem ipsum dolor sit amet, consectetur 
                      adipiscing elit, sed do eiusmod tempor incididunt ut labore 
                      et dolore magna aliqua. Ut enim ad minim veniam, quis 
                      nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
                      commodo consequat. Duis aute irure dolo."
                    </p>
                    <div class="w3-hide-large
                         w3-hide-medium">
                      <br>
                    </div>
                  </div>

                  <div class="w3-col
                       l6
                       m6
                       s12">
                    <b>Visión:</b>
                    <p>
                      Descripción "Lorem ipsum dolor sit amet, consectetur 
                      adipiscing elit, sed do eiusmod tempor incididunt ut labore 
                      et dolore magna aliqua. Ut enim ad minim veniam, quis 
                      nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
                      commodo consequat. Duis aute irure dolo."
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <div class="w3-row
                 w3-panel">
              <div class="w3-container
                   w3-white
                   w3-padding-16">
                <div class="w3-col">
                  <h5 class="w3-hide-small">Valores</h5>
                  <h6 class="w3-hide-large
                      w3-hide-medium">Valores</h6>
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
                       fa-handshake"
                       style="font-size: 25px;"></i>
                  </div>

                  <div class="w3-col
                       l10
                       m10
                       s10">
                    <b>Valor</b>
                  </div>
                </div>              
              </div>
            </div>
          </div>

          <div id="offers" 
               class="w3-row
               tabs" 
               style="display:none">

            <div class="w3-row
                 w3-center
                 w3-panel">             
              <!--Contenedor oferta publicada-->
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
                  <!--large-->
                  <a class="native-text-blue
                     native-cursor-pointer
                     w3-hide-small
                     w3-hide-medium"
                     onclick="sidebarOpen('main', 'sidebar2', '50%');
                       generatemap('map', 'location0', 19.4978, -99.1269);">
                    <b>ver más</b>
                  </a>
                  <!--medium-->
                  <a class="native-text-blue
                     native-cursor-pointer
                     w3-hide-large
                     w3-hide-small"
                     onclick="sidebarOpen('main', 'sidebar2', '80%');
                       generatemap('map', 'location0', 19.4978, -99.1269);">
                    <b>ver más</b>
                  </a>
                  <!--small-->
                  <a class="native-text-blue
                     native-cursor-pointer
                     w3-hide-large
                     w3-hide-medium"
                     onclick="sidebarOpen('main', 'sidebar2', '100%');
                       generatemap('map', 'location0', 19.4978, -99.1269);">
                    <b>ver más</b>
                  </a>
                </div>
              </div>

            </div>
          </div>

          <div id="articles" 
               class="w3-row
               tabs" 
               style="display:none">

            <div class="w3-row-padding">
              <!--Contenedor ver oferta-->
              <div class="w3-col
                   l6
                   m12
                   s12
                   w3-panel">
                <div class="w3-row
                     w3-white
                     native-container-article
                     native-container-article-profile"
                     style="margin-top: 1rem;">
                  <div class="native-article-section"
                       style="box-shadow: inset 0 0 9rem #000000;">
                    <!--Miniatura del articulo-->

                  </div>

                  <div class="native-article-section
                       w3-display-container
                       native-margin-negative-article">
                    <div class="w3-row-padding">
                      <div class="w3-col
                           l2
                           m2
                           s4">
                        <img class="w3-border" src="Images/User_Organization.jpg" 
                             alt="imagen de organización">
                      </div>

                      <div class="w3-col
                           l10
                           m10
                           s8
                           native-text-white">
                        <a><b>Nombre de la organiación</b></a>
                        <br>
                        <small class="w3-hide-small">categoria de la empresa</small>
                      </div>
                      <div class="w3-row
                           w3-center">
                        <h6>Articulo</h6>
                      </div>
                      <div class="w3-row
                           w3-center">
                        <form>
                          <input type="number"
                                 value="0"
                                 hidden> <!--Id de articulo para consultar la información-->
                          <input type="submit"
                             class="w3-btn
                             w3-small
                             native-button-green"
                             value="Leer">
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>          
            </div>
          </div>
        </div>     
      </div>
    </div>
    
    <div>
      <br><br>
    </div>
  </body>
</html>
