$(document).ready(function(){
	var flash = $("#flash");

	if(flash){
		setTimeout(function(){
			flash.remove()	
		},5000);
	};
	
	String.prototype.upperCaseFirst = function(){
		return this.charAt(0).toUpperCase() + this.substr(1);
	}
})