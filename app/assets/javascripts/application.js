// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {
  $("#contactform").validate({
	errorElement:'div',
	rules: {
		"reset_password[name]":{
					                  required: true,
                        			character:true,
     					              maxlength:49
			},
		
		"reset_password[email]":{
						required:true,
						email:true
		},
		
		
		
		"reset_password[subject]":{
						required:true,
						subject:true
		},
		
		"reset_password[message]":{
						required:true,
							minlength:10,
						maxlength:499
		}
		},
	messages: {
		"reset_password[name]":{
			required: "Please Enter Name",
                        character: "Please Enter Only Character",
			                  maxlength:jQuery.format("do not enter more than 50 charecter")
			},
		
		"reset_password[email]":{
						            required: "Please Enter Email address",
						            email: "Please Enter Valid Email id"
						
		},
			
		"reset_password[subject]":{
						            required: "Please Enter Subject ",
						            subject: "Please Enter Valid Subject"
						
		},
		"reset_password[message]":{
						            required: "Please Enter Message",
						            minlength:jQuery.format("Please enter at least 10 characters."),
						            maxlength:jQuery.format("Can not exceed 500 characters")
		}
		}
	});
});
