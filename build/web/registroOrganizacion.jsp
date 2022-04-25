<%-- 
    Document   : registroOrganizacion
    Created on : 21/11/2018, 12:26:35 AM
    Author     : elect
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Registro de organización</title>
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
    <link href="Css/Native/Registro.css"
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
  </head>
  
  <body class="native-bg-grey">
    
    <!--BackGrounds-->
    
    <div class="w3-hide-small
         w3-hide-medium
         native-bg-img2-large">
      <!--fondo-->
    </div>
    
    <div class="w3-hide-large
         native-bg-img2-medium-small">
      <!--fondo-->
    </div>
    
    <div class="w3-opacity-min
         native-bg-gradient-transparent">
      <!--fondo-->
    </div>
    
    <!--NavBars-->
        
    <div class="w3-bar
         w3-card-2
         w3-top
         native-bg-gradient
         native-padding-03  
         native-text-white">      
      <span class="w3-bar-item">Connect</span>
    </div>
    
    <div class="w3-bar
         native-padding-03">
      <!--Empty-->
      <span class="w3-bar-item
            native-text-white">&nbsp;</span>
    </div>
    
    <c:if test = "${msg != null}">
        <div class="w3-row
             w3-container 
             w3-red
             native-text-white" 
             role="alert">${msg}</div>
    </c:if>
    
    <!--Register form-->
    
    <form action="RegistrarOrganizacion"
          method="post"
          enctype="multipart/form-data">
      <div id="Org" 
           class="w3-row
           w3-show
           native-full-width
           w3-display-container">
        
          <!--page header-->
    
          <div class="w3-row
               w3-container
               native-text-white">
            <h4>Registro de datos generales</h4>
          </div>
        
        <div class="w3-col
             l3
             m8
             s12
             w3-display-topmiddle
             native-register-box">
          <div class="w3-row
               w3-display-container
               native-square-register">
            <!--Empty-->
          </div>

          <div class="w3-row
               w3-card-4
               w3-round               
               native-bg-grey
               native-register-box">
            <div class="w3-row
                 w3-card-4
                 w3-white
                 w3-display-container
                 native-img-upload-register">
              <label class="w3-display-bottomright
                     w3-display-container
                     native-button-green-rounded" 
                     for="organizationPic">
                <i class="fas 
                   fa-pen 
                   w3-display-middle">
                </i>
              </label>
              <img src="Images/User_Organization.jpg"
                   class="w3-border"
                   alt="Añadir foto">
              <input type="file"
                     accept="image/.jpg"
                     id="organizationPic"
                     name="organizationPic"
                     hidden>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l6">
                <label class="native-text-grey" 
                       for="name">Nombre comercial de la organización:</label>
                <input type="text"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="name"
                         name="name"
                         required>
              </div>
              <div class="w3-col 
                   l6">
                <label class="native-text-grey" 
                       for="orgCategory">Categoria de la organización:</label>
                <select class="w3-input
                        w3-round-small
                        w3-input-padding-small"
                        id="orgCategory"
                        name="orgCategory"
                        required>
                  <option disabled
                          hidden
                          value=""
                          selected>Seleccionar</option>
                  <option value="1">Alimenticia</option>
                  <option value="2">Farmacéutica</option>
                  <option value="3">Siderúrgica</option>
                  <option value="4">Metalurgica</option>
                  <option value="5">Química</option>
                  <option value="6">Petroquímica</option>
                  <option value="7">Textil</option>
                  <option value="8">Automotriz</option>
                  <option value="9">Inmobiliaria</option>
                  <option value="10">Robótica</option>
                  <option value="11">Informática</option>
                  <option value="12">Astronáutica</option>
                  <option value="13">Mecánica</option>
                  <option value="14">Aeroespacial</option>
                </select>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey" 
                       for="mail">Correo electronico:</label>
                <input type="email"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="mail"
                         name="mail"
                         required>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey" 
                       for="phone">Número telefonico fijo:</label>
                <input type="number"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="phone"
                         name="phone"
                         required>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l8">
                <label class="native-text-grey" 
                       for="location">Dirección:</label>
                <input type="text"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="location"
                         name="location"
                         placeholder="Calle N°, Colonia"
                         required>
              </div>
              <div class="w3-col 
                   l4">
                <label class="native-text-grey" 
                       for="postalCode">CP:</label>
                <input type="number"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="postalCode"
                         name="postalCode"
                         required>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l6">
                <label class="native-text-grey" 
                       for="estate">Estado:</label>
                <select class="w3-input
                        w3-round-small
                         w3-input-padding-small"
                        id="estate"
                        name="estate"
                        required>
                  <option disabled
                          hidden
                          value=""
                          selected>Seleccionar</option>
                  <option value="2">Ciudad de México</option>
                  <option value="3">Estado de México</option>
                </select>
              </div>
              <div class="w3-col 
                   l6">
                <label class="native-text-grey" 
                       for="municipallity">Municipio:</label>
                <select class="w3-input
                        w3-round-small
                        w3-input-padding-small"
                        id="municipallity"
                        name="municipallity"
                        required>
                  <option disabled
                          hidden
                          value=""
                          selected>Seleccionar</option>
                  <option value="2">Álvaro Obregón</option>
                  <option value="3">Azcapotzalco</option>
                  <option value="4">Benito Juárez</option>
                  <option value="5">Coyoacán</option>
                  <option value="6">Cuajimalpa de Morelos</option>
                  <option value="7">Cuauhtémoc</option>
                  <option value="8">Gustavo A. Madero</option>
                  <option value="9">IZtacalco</option>
                  <option value="10">Iztapalapa</option>
                  <option value="11">Magdalena Contreras</option>
                  <option value="12">Miguel Hidalgo</option>
                  <option value="13">Milpa Alta</option>
                  <option value="14">Tláhuac</option>
                  <option value="15">Tlalpan</option>
                  <option value="16">Venustiano Carranza</option>
                  <option value="17">Xochimilco</option>
                </select>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey" 
                       for="pass">Contraseña:</label>
                <input type="password"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="pass"
                         name="pass"
                         required>
              </div>
            </div>

            <br>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col
                   w3-center
                   l12">
                <a class="w3-btn
                   w3-medium
                   native-button-blue"
                   href="index.html">Cancelar</a>
                
                <a class="w3-btn
                   w3-medium
                   native-button-green"
                   onclick="moveSteps()">Siguiente</a>
              </div>
            </div>
          </div>        
          <div class="w3-container
               w3-hide-small">
            <h4>&nbsp;</h4>
          </div>
        </div>
      </div>

      <div id="Agent" 
           class="w3-row
           w3-hide
           native-full-width
           w3-display-container">
        
        <!--page header-->
    
          <div class="w3-row
               w3-container
               native-text-white">
            <h4>Registro de representante</h4>
          </div>
        
        <div class="w3-col
             l3
             m8
             s12
             w3-display-topmiddle
             native-register-box">
          <div class="w3-row
               w3-display-container
               native-square-register">
            <!--Empty-->
          </div>

          <div class="w3-row
               w3-round               
               native-bg-grey
               native-register-box
               w3-card-4">
            <div class="w3-row
                 w3-white
                 w3-card-4
                 w3-display-container
                 native-img-upload-register">
              <label class="w3-display-bottomright
                     w3-display-container
                     native-button-green-rounded" 
                     for="agentPic">
                <i class="fas 
                   fa-pen 
                   w3-display-middle">
                </i>
              </label>
              <img src="Images/User_Male.jpg"
                   class="w3-border"
                   alt="Añadir foto">
              <input type="file"
                     accept="image/.jpg"
                     id="agentPic"
                     name="agentPic"
                     hidden>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey" 
                       for="agentName">Nombre(s):</label>
                <input type="text"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="agentName"
                         name="agentName"
                         required>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey" 
                       for="agentSurname">Apellido paterno:</label>
                <input type="text"
                       class="w3-input
                       w3-round-small
                         w3-input-padding-small"
                       id="agentSurname"
                       name="agentSurname"
                       required>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey" 
                       for="agentMail">Correo electronico:</label>
                <input type="email"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="agentMail"
                         name="agentMail"
                         required>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey" 
                       for="agentCharge">Cargo en la organización:</label>
                <input type="text"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="agentCharge"
                         name="agentCharge"
                         required>
              </div>
            </div>

            <br>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col
                   w3-center
                   l12">
                <a class="w3-btn
                       w3-medium
                       native-button-blue"
                       onclick="moveSteps()">Atrás</a>

                <input type="submit"
                       class="w3-btn
                       w3-medium
                       native-button-green"
                       value="Finalizar">
              </div>
            </div>
          </div>

          <div class="w3-container
               w3-hide-small">
            <h4>&nbsp;</h4>
          </div>
        </div>
      </div>
    </form>
  </body>
</html>
