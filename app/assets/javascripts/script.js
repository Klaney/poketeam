$(document).ready(function(){
	var flash = $("#flash");

	if(flash){
		setTimeout(function(){
			flash.remove()	
		},5000);
	};
})