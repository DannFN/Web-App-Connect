/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*colapsible navbar*/
function colapsible() {
  var x = document.getElementById("colapsible");
  if (x.className.indexOf("w3-show") === -1) {
      x.className += " w3-show";
  } else { 
      x.className = x.className.replace(" w3-show", "");
  }
}

function moveSteps() {
  var x = document.getElementById("Org");
  var y = document.getElementById("Agent");
  
  if (y.className.indexOf("w3-show") === -1) {
      y.className = x.className.replace(" w3-hide", "");
      y.className += " w3-show";
  } else { 
      y.className = x.className.replace(" w3-show", "");
      y.className += " w3-hide";
  }
  
  if (x.className.indexOf("w3-show") === -1) {
      x.className = x.className.replace(" w3-hide", "");
      x.className += " w3-show";
  } else { 
      x.className = x.className.replace(" w3-show", "");
      x.className += " w3-hide";
  }
}

function openTab(evt, id) {
  var i, x, tablinks;
  x = document.getElementsByClassName("tabs");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-border-blue", "");
  }
  document.getElementById(id).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-border-blue";
}

function sidebarOpen(id1, id2, desp) {
  document.getElementById(id1).style.marginLeft = desp;
  document.getElementById(id2).style.width = desp;
  document.getElementById(id2).style.display = "block";
}

function sidebarClose(id1, id2) {
  document.getElementById(id1).style.marginLeft = "0%";
  document.getElementById(id2).style.display = "none";
}