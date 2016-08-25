<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:import url="templates/ig-header.jsp" />
	
	<!-- Input label (default form) -->
			<form role="form" action="#">
	            <div class="panel panel-default">
	                <div class="panel-heading"><h6 class="panel-title"><i class="icon-pencil3"></i> Pasos para registrar una denuncia</h6></div>
	                <div class="panel-body">
						<div class="tabbable">
							<ul class="nav nav-pills nav-justified">
								<li class="active"><a href="#panel-pill1" data-toggle="tab"><i class="icon-accessibility"></i> 1. Registrar denunciante</a></li>
								<li class="disabled"><a href="#panel-pill2" data-toggle="tab"><i class="icon-stack"></i> Profile</a></li>
								<li class="disabled"><a href="#panel-pill3" data-toggle="tab"><i class="icon-stack"></i> Profile</a></li>
								<li class="disabled"><a href="#panel-pill3" data-toggle="tab"><i class="icon-stack"></i> Profile</a></li>
							</ul>

							<div class="tab-content pill-content">
								<div class="tab-pane fade in active" id="panel-pill1">
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
				                                <select class="form-control" tabindex="2">
				                                    <option value="" selected>Seleccionar</option> 
				                                    <c:forEach items="${findAllIdentityCard}" var="findAllID">
				                                    <option value="${findAllID.identityCardId}"><c:out value="${findAllID.description}" /></option>
				                                    </c:forEach>
				                                </select>
											</div>
											
											<div class="col-md-2">
												<label>Nro. doc. de identidad:</label>
				                                <input type="text" class="form-control" placeholder="Doc. de identidad">
											</div>
											
											<div class="col-md-2">
												<label>Género:</label>
				                                <select class="form-control tabindex="2">
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
												<label>Fecha de nacimiento:</label>
				                                <input type="text" class="form-control" placeholder="col-md-10">
											</div>
											
											<div class="col-md-2">
												<label>Estado civíl:</label>
				                                <select class="form-control" tabindex="2">
				                                    <option value="" selected>Seleccionar</option>
				                                    <option value="Cambodia">Masculino</option> 
				                                    <option value="Cameroon">Femenino</option> 
				                                </select>
											</div>
											
											<div class="col-md-2">
												<label>Ocupación:</label>
				                                <input type="text" class="form-control" placeholder="col-md-10">
											</div>
											
											<div class="col-md-3">
												<label>Centro laboral:</label>
				                                <input type="text" class="form-control" placeholder="col-md-10">
											</div>
											
											<div class="col-md-3">
												<label>Correo:</label>
				                                <input type="text" class="form-control" placeholder="col-md-10">
											</div>
										</div>
									</div>
			
			                        <div class="form-actions text-right">
			                        	<input type="submit" value="Verificar persona" class="btn btn-primary">
			                        	<input type="submit" value="Siguiente" class="btn btn-primary">
			                        </div>
								</div>

								<div class="tab-pane fade" id="panel-pill2">
									Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.
								</div>

								<div class="tab-pane fade" id="panel-pill3">
									Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.
								</div>

								<div class="tab-pane fade" id="panel-pill4">
									Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.
								</div>
							</div>
						</div>
				    </div>
				</div>
			</form>
			<!-- /input label (default form) -->
	
	<c:import url="templates/ig-footer.jsp" />