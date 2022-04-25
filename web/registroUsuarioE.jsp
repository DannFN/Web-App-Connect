<%-- 
    Document   : registroUsuarioE
    Created on : 21/11/2018, 12:26:57 AM
    Author     : elect
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Registro de usuario Explorador</title>
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
         native-bg-img1-large">
      <!--fondo-->
    </div>
    
    <div class="w3-hide-large
         native-bg-img1-medium-small">
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

    <!--page header-->
    
    <div class="w3-row
         w3-container
         native-text-white">
      <h4>Registro de datos generales</h4>
    </div>
    
    <!--Register form-->

    <div class="w3-row
         w3-display-container">
      <div class="w3-col
           l3
           m8
           s12
           w3-display-topmiddle">
        <form action="RegistrarUsuario"
              method="post"
              enctype="multipart/form-data">
          <div class="w3-row
               w3-display-container
               native-square-register">
            <!--Empty-->
          </div>

          <div class="w3-row
               w3-round      
               w3-card-4
               native-bg-grey
               native-register-box">
            <div class="w3-row
                 w3-white
                 w3-card-4
                 w3-display-container
                 native-img-upload-register">
              <label class="w3-display-container
                     w3-display-bottomright
                     native-button-green-rounded" 
                     for="pic">
                <i class="fas 
                   fa-pen
                   w3-display-middle">
                </i>
              </label>
              <img src="Images/User_Male.jpg"
                   class="w3-border"
                   alt="Añadir foto">
              <input type="file"
                     accept="image/jpeg"
                     id="pic"
                     name="pic"
                     style="display:none;">
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey"
                       for="name">Nombre(s):</label>
                <input type="text"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="name"
                         name="name"
                         required>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l6
                   s12">
                <label class="native-text-grey" 
                       for="surname">Apellido paterno:</label>
                <input type="text"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="surname"
                         name="surname"
                         required>
              </div>
              <div class="w3-col 
                   l6
                   s12">
                <label class="native-text-grey" 
                       for="surname1">Apellido materno:</label>
                <input type="text"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="surname1"
                         name="surname1"
                         required>
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
                   l6
                   s12">
                <label class="native-text-grey" 
                       for="phone">Número celular:</label>
                <input type="number"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="phone"
                         name="phone"
                         required>
              </div>
              <div class="w3-col 
                   l6
                   s12">
                <label class="native-text-grey" 
                       for="bDate">Fecha de nacimiento:</label>
                <input type="date"
                         class="w3-input
                         w3-round-small
                         w3-input-padding-small"
                         id="bDate"
                         name="bDate"
                         required>
              </div>
            </div>

            <div class="w3-row-padding
                 native-form-group">
              <div class="w3-col 
                   l12">
                <label class="native-text-grey" 
                       for="sex2">Género: </label>
                <br>
                <input type="radio"
                         id="sex2"
                         name="sex"
                         value="1"
                         required>
                <label for="sex2">Masculino</label>

                <input type="radio"
                         id="sex3"
                         name="sex"
                         value="2"
                         required>
                <label for="sex3">Femenino</label>
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
                
                <input type="submit"
                       class="w3-btn
                       w3-medium
                       native-button-green"
                       value="Continuar">
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>