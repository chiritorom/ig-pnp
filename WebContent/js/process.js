var $form = $(".login-wrapper form");


$form.on("submit", function(e){
	e.preventDefault();
	var data_form = $form.serialize();
	$.ajax({
		method: "POST",
		url: "/IG-PNP/AJAXLogin",
		data: data_form,
		success: function(result){
			if(result == "true") {
				window.location.href = "/IG-PNP/dashboard";
			} else {
				alert_message("Usuario y/o contraseña incorrectas");
				$(".login-wrapper form .fade.in").fadeIn("fast", function(){
					$(".login-wrapper form .fade.in").css("opacity","1");
					setTimeout(function(){
						$(".login-wrapper form .fade.in").fadeOut("slow", function(){
							$(".login-wrapper form .fade.in").css("opacity","0");
						});
					}, 5000);
				});
			}
		}
	});
	
	
	
});

var alert_message = function(msg){
    $(".login-wrapper form .fade.in").html("<i class=\"icon-cancel-circle\"></i> "+msg);
}