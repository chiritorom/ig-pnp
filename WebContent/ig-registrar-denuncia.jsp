<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:import url="templates/ig-header.jsp" />
	
	<!-- Input label (default form) -->
			<form role="form" action="#">
	            <div class="panel panel-default">
	                <div class="panel-heading"><h6 class="panel-title"><i class="icon-pencil3"></i> Registrar denunciante</h6></div>
	                <div class="panel-body">

						<div class="form-group">
							<div class="row">
								<div class="col-md-2">
									<label>Nombres:</label>
	                                <input type="text" class="form-control" placeholder="Nombres">
								</div>

								<div class="col-md-2">
									<label>Apellido paterno:</label>
	                                <input type="text" class="form-control" placeholder="Ap. paterno">
								</div>
								
								<div class="col-md-2">
									<label>Apellido materno:</label>
	                                <input type="text" class="form-control" placeholder="Ap. materno">
								</div>
								
								<div class="col-sm-2">
									<label>Documento de identidad: </label>
	                                <select data-placeholder="Elegir una opción" class="select-full" tabindex="2">
	                                    <option value="" selected>Seleccionar</option> 
	                                    <option value="Cambodia">Cambodia</option> 
	                                    <option value="Cameroon">Cameroon</option> 
	                                    <option value="Canada">Canada</option> 
	                                    <option value="Cape Verde">Cape Verde</option> 
	                                </select>
								</div>
								
								<div class="col-md-2">
									<label>Nro. de documento:</label>
	                                <input type="text" class="form-control" placeholder="Doc. de identidad">
								</div>
								
								<div class="col-md-2">
									<label>Género:</label>
	                                <select data-placeholder="Elegir una opción" class="select-full" tabindex="2">
	                                    <option value="" selected>Seleccionar</option>
	                                    <option value="Cambodia">Masculino</option> 
	                                    <option value="Cameroon">Femenino</option> 
	                                </select>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2">
									<label>Label:</label>
	                                <input type="text" class="form-control" placeholder="col-md-2">
								</div>

								<div class="col-md-10">
									<label>Label:</label>
	                                <input type="text" class="form-control" placeholder="col-md-10">
								</div>
							</div>
						</div>

                        <div class="form-actions text-right">
                        	<input type="submit" value="Verificar persona" class="btn btn-primary">
                        	<input type="submit" value="Siguiente" class="btn btn-primary">
                        </div>

				    </div>
				</div>
			</form>
			<!-- /input label (default form) -->
	
	<c:import url="templates/ig-footer.jsp" />