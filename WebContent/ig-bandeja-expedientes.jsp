<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:import url="templates/ig-header.jsp" />
	
	<!-- Striped datatable inside panel -->
			            <div class="panel panel-default">
			                <div class="panel-heading"><h6 class="panel-title"><i class="icon-paragraph-justify"></i> Listado de expedientes</h6></div>
			                <div class="datatable">
				                <table class="table table-striped">
				                    <thead>
				                        <tr>
				                            <th>#</th>
				                            <th>Nro. expediente</th>
				                            <th>Nro. documento</th>
				                            <th>Denunciante</th>
				                            <th>Fecha de registro</th>
				                            <th>Estado</th>
				                            <th>Acción</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                    	<c:forEach items="${findAllDocument}" var="findAllDoc" >
					                        <tr>
					                            <td>1</td>
					                            <td>00001</td>
					                            <td>12345</td>
					                            <td><c:out value="${findAllDoc.person.lastName}, ${findAllDoc.person.firstName}" /></td>
					                            <td><c:out value="${findAllDoc.documentDate}" /></td>
					                            <td>26/08/2016</td>
					                            <td>
					                            	<div class="table-controls">
					                                    <a data-id="${findAllDoc.documentId}" data-toggle="modal" role="button" href="#form_modal" class="btn btn-default btn-icon btn-xs tip" data-original-title="Ver detalles"><i class="icon-eye"></i></a>
					                                </div>
				                                </td>
			                                </tr>
	                                	</c:forEach>
				                    </tbody>
				                </table>
			                </div>
				        </div>
				        <!-- /striped datatable inside panel -->
									        
				        <!-- Form modal -->
						<div id="form_modal" class="modal fade" tabindex="-1" role="dialog">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title"><i class="icon-paragraph-justify2"></i> Detalles de la denuncia</h4>
									</div>
			
									<!-- Form inside modal -->
									<form action="#" role="form">
			
										<div class="modal-body with-padding">
											<div class="block-inner text-danger">
												<h6 class="heading-hr">Datos del denunciante <small class="display-block">Please enter your shipping info</small></h6>
											</div>
			
											<div class="form-group">
												<div class="row">
												<div class="col-sm-6">
													<label>Nombres</label>
													<p>Carlos Alexander</p>
												</div>
			
												<div class="col-sm-6">
													<label class="control-label">Apellidos</label>
													<p>Chirito Romero</p>
												</div>
												</div>
											</div>
			
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6">
														<label>Address line 1</label>
														<input type="text" placeholder="Ring street 12" class="form-control">
													</div>
			
													<div class="col-sm-6">
														<label>Address line 2</label>
														<input type="text" placeholder="building D, flat #67" class="form-control">
													</div>
												</div>
											</div>
			
											<div class="form-group">
												<div class="row">
													<div class="col-sm-4">
														<label>City</label>
														<input type="text" placeholder="Munich" class="form-control">
													</div>
			
													<div class="col-sm-4">
														<label>State/Province</label>
														<input type="text" placeholder="Bayern" class="form-control">
													</div>
			
													<div class="col-sm-4">
														<label>ZIP code</label>
														<input type="text" placeholder="1031" class="form-control">
													</div>
												</div>
											</div>
			
											<div class="form-group">
												<div class="row">
													<div class="col-sm-6">
														<label>Email</label>
														<input type="text" placeholder="eugene@kopyov.com" class="form-control">
														<span class="help-block">name@domain.com</span>
													</div>
			
													<div class="col-sm-6">
														<label>Phone #</label>
														<input type="text" placeholder="+99-99-9999-9999" data-mask="+99-99-9999-9999" class="form-control">
														<span class="help-block">+99-99-9999-9999</span>
													</div>
												</div>
											</div>
										</div>
			
										<div class="modal-footer">
											<button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
										</div>
			
									</form>
								</div>
							</div>
						</div>
						<!-- /form modal -->
	
	<c:import url="templates/ig-footer.jsp" />