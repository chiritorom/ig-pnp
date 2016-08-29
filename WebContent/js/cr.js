/* -- CREAR EXPEDIENTE -- BUSCAR Y AGREGAR DENUNCIANTE -- */

$(".panel-de .panel-heading a:first-child").on("click", function(){
	$("#small_modal .modal-title").html("<i class=\"icon-accessibility\"></i> Buscar denunciante");
	$("#small_modal").modal("show");
});

$(".panel-de .panel-heading a:last-child").on("click", function(){
	$("#form_modal .modal-title").html("<i class=\"icon-accessibility\"></i> Agregar denunciante");
	$("#form_modal").modal("show");
	
});

$("#form_modal .modal-footer button:last-child").on("click", function(){
	$(".panel-de .panel-heading a:last-child").addClass("disabled");
	$("#form_modal").modal("hide");
});

/* -/- CREAR EXPEDIENTE -- BUSCAR Y AGREGAR DENUNCIANTE -/- */

/* -- CREAR EXPEDIENTE -- BUSCAR Y AGREGAR DENUNCIADO -- */

$(".panel-do .panel-heading a:first-child").on("click", function(){
	$("#small_modal .modal-title").html("<i class=\"icon-accessibility\"></i> Buscar denunciado");
	$("#small_modal").modal("show");
});