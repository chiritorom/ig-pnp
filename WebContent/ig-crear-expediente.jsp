<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:import url="templates/ig-header.jsp" />
	
	<!-- Input label (default form) -->
			<form role="form" action="#">
	            <div class="panel panel-default">
	                <div class="panel-heading"><h6 class="panel-title"><i class="icon-pencil3"></i> Agregar documento</h6></div>
	                <div class="panel-body">
						<div class="form-group">
							<div class="row">
								<div class="col-md-2">
									<label>Nº del documento:</label>
	                                <input type="text" class="form-control">
								</div>

								<div class="col-md-2">
									<label>Fecha del documento:</label>
	                                <input type="text" class="form-control">
								</div>
								
								<div class="col-md-2">
									<label>Nº de folio:</label>
	                                <input type="text" class="form-control">
								</div>
								
								<div class="col-md-3">
									<label>Tipo de documento: </label>
	                                <select class="form-control" tabindex="2" required>
	                                    <option value="" selected>Seleccionar</option> 
	                                    <c:forEach items="${findAllIdentityCard}" var="findAllID">
	                                    <option value="${findAllID.identityCardId}"><c:out value="${findAllID.description}" /></option>
	                                    </c:forEach>
	                                </select>
								</div>
								
								<div class="col-md-3">
									<label>Procedencia:</label>
	                                <input type="text" class="form-control">
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="row">
								<div class="col-md-12">
									<label>Asunto:</label>
	                                <input type="text" class="form-control">
								</div>
							</div>
						</div>
						
						<!-- Table with toolbar -->
			            <div class="panel panel-success panel-de">
			                <div class="panel-heading">
			                	<h6 class="panel-title"><i class="icon-rating3"></i> Denunciante</h6>
			                	<div class="pull-right">
				                	<a class="btn btn-xs btn-default">Buscar denunciante</a>
				                	<a class="btn btn-xs btn-default">Agregar denunciante</a>
			                	</div>
			                </div>
			                <div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>#</th>
											<th>Nombres</th>
											<th>Apellidos</th>
											<th>Doc. de identidad</th>
											<th>Nº Doc. de identidad<</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
				        </div>
				        <!-- /table with toolbar -->
				        
				        <!-- Table with toolbar -->
			            <div class="panel panel-danger panel-do">
			                <div class="panel-heading">
			                	<h6 class="panel-title"><i class="icon-rating3"></i> Denunciado</h6>
			                	<div class="pull-right">
				                	<a class="btn btn-xs btn-default">Buscar denunciado</a>
				                	<a class="btn btn-xs btn-default">Agregar denunciado</a>
			                	</div>
		                	</div>
			                <div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>#</th>
											<th>Nombres</th>
											<th>Apellidos</th>
											<th>Nº CIP</th>
											<th>Acción</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
				        </div>
				        <!-- /table with toolbar -->

                        <div class="form-actions text-right">
                        	<input type="submit" value="Agregar" class="btn btn-primary">
                        </div>
				    </div>
				</div>
			</form>
			<!-- /input label (default form) -->
			
			<!-- Small modal -->
			<div id="small_modal" class="modal fade" tabindex="-1" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title"></h4>
						</div>

						<div class="modal-body with-padding">
							<div class="form-group">
								<div class="row">
									<div class="col-md-12">
										<label>Buscar por DNI:</label>
		                                <input type="text" class="form-control">
									</div>
								</div>
							</div>
						</div>

						<div class="modal-footer">
							<button class="btn btn-warning" data-dismiss="modal">Cerrar</button>
							<button class="btn btn-primary">Agregar</button>
						</div>
					</div>
				</div>
			</div>
			<!-- /small modal -->
			
			<!-- Form modal -->
			<div id="form_modal" class="modal fade" tabindex="-1" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title"></h4>
						</div>

						<!-- Form inside modal -->
						<form>

							<div class="modal-body with-padding">
								<div class="block-inner text-danger">
									<h6 class="heading-hr">Rellene el formulario</h6>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-sm-4">
											<label>Nombres:</label>
											<input type="text" name="nombres" class="form-control" required>
										</div>
	
										<div class="col-sm-4">
											<label>Apellido paterno:</label>
											<input type="text" name="apPaterno" class="form-control" required>
										</div>
										
										<div class="col-sm-4">
											<label>Apellido materno:</label>
											<input type="text" name="apMaterno" class="form-control" required>
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6">
			                                <label>Género:</label>
		                                    <select name="genero" class="form-control" required>
		                                        <option value="">Seleccionar</option>
		                                        <c:forEach items="${findAllGender}" var="findAllG">
		                                        <option value="${findAllG.genderId}"><c:out value="${findAllG.description}" /></option>
		                                        </c:forEach>
		                                    </select>
	                                    </div>
	                                    
	                                    <div class="col-sm-6">
											<label>Email:</label>
											<input type="text" name="email" class="form-control">
										</div>
                                    </div>
	                            </div>

								<div class="form-group">
									<div class="row">
										<div class="col-sm-6">
											<label>Doc. de identidad:</label>
		                                    <select class="form-control" name="docIdentidad" required>
		                                        <option value="">Seleccionar</option> 
		                                        <c:forEach items="${findAllIdentityCard}" var="findAllIC">
		                                        <option value="${findAllIC.identityCardId}"><c:out value="${findAllIC.acronym} - ${findAllIC.description}" /></option>
		                                        </c:forEach>
		                                    </select>
										</div>

										<div class="col-sm-6">
											<label>Nº de documento:</label>
											<input type="text" name="numDocIdentidad" class="form-control">
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-sm-4">
											<label>Departamento:</label>
		                                    <select name="departamento" class="form-control" required>
		                                        <option value="">Seleccionar</option> 
		                                        <option value="1">Masculino</option> 
		                                        <option value="2">Femenino</option> 
		                                    </select>
										</div>

										<div class="col-sm-4">
											<label>Provincia:</label>
		                                    <select name="provincia" class="form-control" required>
		                                        <option value="">Seleccionar</option> 
		                                        <option value="1">Masculino</option> 
		                                        <option value="2">Femenino</option> 
		                                    </select>
										</div>

										<div class="col-sm-4">
											<label>Distrito:</label>
		                                    <select name="distrito"  class="form-control" required>
		                                        <option value="">Seleccionar</option> 
		                                        <option value="1">Masculino</option> 
		                                        <option value="2">Femenino</option> 
		                                    </select>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-sm-6">
											<label>Dirección:</label>
											<input type="text" name="direccion" class="form-control">
										</div>

										<div class="col-sm-3">
											<label>Telf. principal:</label>
											<input type="text" name="telfPrincipal" class="form-control">
										</div>
										
										<div class="col-sm-3">
											<label>Telf. secundario:</label>
											<input type="text" name="telfSecundario" class="form-control">
										</div>
									</div>
								</div>
							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
								<button type="submit" class="btn btn-primary">Agregar</button>
							</div>

						</form>
					</div>
				</div>
			</div>
			<!-- /form modal -->
				
	<c:import url="templates/ig-footer.jsp" />