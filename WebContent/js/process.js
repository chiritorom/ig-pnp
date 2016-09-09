var $form = $(".login-wrapper form"),
	$fade = $(".login-wrapper form .fade.in");

$form.on("submit", function(e){
	e.preventDefault();
	var data_form = $form.serialize();
	$.ajax({
		method: "POST",
		url: "/AJAXLogin",
		data: data_form,
		success: function(result){
			if(result == "true") {
				window.location.href = "/dashboard";
			} else {
				alert_message("Usuario y/o contraseña incorrectas");
				$fade.fadeIn("fast", function(){
					$fade.css("opacity","1");
					setTimeout(function(){
						$fade.fadeOut("slow", function(){
							$fade.css("opacity","0");
						});
					}, 5000);
				});
			}
		}
	});
	
	
	
});

var alert_message = function(msg){
	$fade.html("<i class=\"icon-cancel-circle\"></i> "+msg);
}

/* -- */
var i = 1;

$("#form_modal form").on("submit", function(e){
	e.preventDefault();
	
	var data_form = $(this).serializeArray();
	data_form.push({name: "count", value: i});
	$.ajax({
		method: "POST",
		url: "/AJAXPerson",
		data: data_form,
		success: function(result) {
			i++;
			console.log(i);
			$(".panel-de tbody").append(result);
			$("#form_modal form")[0].reset();
		}
	})
	
	//$(".panel-de .panel-heading a:last-child").addClass("disabled");
	$("#form_modal").modal("hide");
});










