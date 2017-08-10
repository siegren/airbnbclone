// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs

//= require bootstrap-sprockets
//= require_tree .

  $(function(){
  	$('#sign-up-button').submit(function(e){
	// alert('working');
	e.preventDefault();

		// var fullname = $('#fullname').val();
		var with_empty = false;
		var form = this;
		var elements = form.elements;
		// alert(elements.length);
		for(var x = 0; x < elements.length; x++){
			if(elements[x].value.trim() == ""){
				$('#' + elements[x].id).css({"border":"2px solid red"});
				// alert(elements[x]$('#' + .id);
				with_empty = true;
				// alert(elements[x].name);
			}
		}
		// if(fullname == ""){
		// 	$('#fullname').css({"border":"2px solid red"});
		// }else{
		// 	this.submit();
		// }	

		if (with_empty != true ){
			this.submit();
		}

		with_empty = false;

			return false;
	});

  });



