String.prototype.toCapitalize = function() {
	 var str = this.valueOf();
	 return str.charAt(0).toUpperCase() + str.slice(1);
};
$(function(){
  var chemin= location.pathname;
  var chem2 = chemin.split('/');
  console.log(chem2);
  if(chem2[2] == 'index.html' || chem2[2]==''){
	$('#breadcrumb').css('display', 'none')
  }
  else{
	$('#breadcrumb').css('display', 'block');
	$('#breadcrumb').html('<a href="index.html"> Accueil </a>'  + '<i class="fas fa-caret-right"></i> ' + chem2[2].slice(0, -5).toCapitalize()); 
  };
  
  /* sub menu animation */
  $('#menuPhoto').mouseover(function(){
	  $('#submenu').fadeIn();
  });
  $('#a1').mouseover(function(){
	  $('#submenu').fadeOut();
  });
  
});
  
  
  