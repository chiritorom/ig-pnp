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
								
								<div class="col-sm-3">
									<label>Tipo de documento: </label>
	                                <select class="form-control" tabindex="2">
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
			            <div class="panel panel-success panel-den">
			                <div class="panel-heading"><h6 class="panel-title"><i class="icon-rating3"></i> Denunciante</h6></div>
			                <ul class="panel-toolbar">
			                    <li><a class="search-modal"><i class="icon-search3"></i> Buscar</a></li>
			                    <li><a><i class="icon-plus"></i> Agregar</a></li>
			                </ul>
			                <div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>#</th>
											<th>Nombre</th>
											<th>Apellido</th>
											<th>DNI</th>
											<th>Column name</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Row 2</td>
											<td>Row 3</td>
											<td>Row 4</td>
											<td>Row 5</td>
										</tr>
									</tbody>
								</table>
							</div>
				        </div>
				        <!-- /table with toolbar -->
				        
				        <!-- Table with toolbar -->
			            <div class="panel panel-danger panel-den">
			                <div class="panel-heading"><h6 class="panel-title"><i class="icon-rating3"></i> Denunciado</h6></div>
			                <ul class="panel-toolbar">
			                    <li><a class="search-modal"><i class="icon-search3"></i> Buscar</a></li>
			                    <li><a ><i class="icon-plus"></i> Agregar</a></li>
			                </ul>
			                <div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>Column name</th>
											<th>Column name</th>
											<th>Column name</th>
											<th>Column name</th>
											<th>Column name</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Row 1</td>
											<td>Row 2</td>
											<td>Row 3</td>
											<td>Row 4</td>
											<td>Row 5</td>
										</tr>
										<tr>
											<td>Row 1</td>
											<td>Row 2</td>
											<td>Row 3</td>
											<td>Row 4</td>
											<td>Row 5</td>
										</tr>
										<tr>
											<td>Row 1</td>
											<td>Row 2</td>
											<td>Row 3</td>
											<td>Row 4</td>
											<td>Row 5</td>
										</tr>
										<tr>
											<td>Row 1</td>
											<td>Row 2</td>
											<td>Row 3</td>
											<td>Row 4</td>
											<td>Row 5</td>
										</tr>
										<tr>
											<td>Row 1</td>
											<td>Row 2</td>
											<td>Row 3</td>
											<td>Row 4</td>
											<td>Row 5</td>
										</tr>
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
							<h4 class="modal-title"><i class="icon-accessibility"></i> Buscar</h4>
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
			
			<script>
				$(".panel-den:first-child .search-modal").on("click", function(){
					//$("#small_modal").modal("show");
				});
				
				$(".panel-den:last-child .search-modal").on("click", function(){
					//$("#small_modal").modal("show");
					alert("hola");
				});
			</script>
			
	
	<c:import url="templates/ig-footer.jsp" />