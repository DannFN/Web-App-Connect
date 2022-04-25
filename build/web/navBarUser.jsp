<%-- 
    Document   : navbar
    Created on : 24/11/2018, 10:29:17 PM
    Author     : elect
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--NavBars-->
    
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
