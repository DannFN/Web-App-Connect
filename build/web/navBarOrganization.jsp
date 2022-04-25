<%-- 
    Document   : navBarOrganization
    Created on : 25/11/2018, 12:42:14 PM
    Author     : elect
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--NavBars-->
    
<div class="w3-bar
     w3-card-2
     w3-top
     native-bg-gradient
     native-padding-03  
     native-text-white">

  <span class="w3-bar-item
        w3-hide-small">Connect</span>

  <span class="w3-bar-item
        w3-hide-large
        w3-hide-medium"><b>C</b></span>

  <form>
      <input type="text"
             class="w3-bar-item
             w3-round-small"
             name="search"
             placeholder="buscar"
             required>
      <button type="submit"
             class="w3-bar-item
             w3-round-small">
        <i class="fas 
           fa-search"
           style="font-size: 12px;"></i>
      </button>
    </form> 

  <form>
    <button class="w3-bar-item 
            w3-btn
            w3-right
            w3-hide-small
            w3-hide-medium
            w3-round-small
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
     w3-round-small
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
     w3-round-small
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
     w3-round-small
     native-button-bar">
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

    <a href="#" 
       class="w3-bar-item 
       w3-btn
       w3-round-small
       native-button-bar">Inicio</a>

    <a href="#" 
       class="w3-bar-item 
       w3-btn
       w3-round-small
       native-button-bar">
      <img src="Images/User_Organization.jpg" 
           alt="foto de perfil usuario"> 
      Organización
    </a>

    <a href="#" 
       class="w3-bar-item 
       w3-btn
       w3-round-small
       native-button-bar">
      <i class="fas 
         fa-cog"></i> 
      Ajustes
    </a>

    <form>
      <button class="w3-bar-item 
              w3-btn
              w3-round-small
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
