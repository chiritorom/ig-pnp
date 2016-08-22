<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:import url="templates/ig-header.jsp" />
			<!-- Info blocks -->
			<ul class="info-blocks">
				<li class="bg-primary">
					<div class="top-info">
						<a href="#">Agregar denuncia</a>
						<small>post management</small>
					</div>
					<a href="#"><i class="icon-pencil"></i></a>
					<span class="bottom-info bg-danger">12 drafts in progress</span>
				</li>
				<li class="bg-success">
					<div class="top-info">
						<a href="#">Editar denuncia</a>
						<small>layout settings</small>
					</div>
					<a href="#"><i class="icon-cogs"></i></a>
					<span class="bottom-info bg-primary">No updates</span>
				</li>
				<li class="bg-danger">
					<div class="top-info">
						<a href="/IG-PNP/ver-denuncias">Ver denuncias</a>
						<small>visits, users, orders stats</small>
					</div>
					<a href="/IG-PNP/ver-denuncias"><i class="icon-stats2"></i></a>
					<span class="bottom-info bg-primary">3 new updates</span>
				</li>
			</ul>
			<!-- /info blocks -->

        	<!-- Recent activity -->
			<div class="block">
				<h6 class="heading-hr"><i class="icon-file"></i> Actividad reciente</h6>
				<ul class="media-list">
					<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object" src="http://placehold.it/300" alt="">
						</a>
						<div class="media-body">
							<div class="clearfix">
								<a href="#" class="media-heading">Eugene Kopyov</a>
								<span class="media-notice">December 10, 2013 / 10:20 pm</span>
							</div>
							Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
						</div>
					</li>

					<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object" src="http://placehold.it/300" alt="">
						</a>
						<div class="media-body">
							<div class="clearfix">
								<a href="#" class="media-heading">Martin Wolf</a>
								<span class="media-notice">December 12, 2013 / 10:14 pm</span>
							</div>
							Cras tempus pretium ligula, quis viverra purus eleifend et.
						</div>
					</li>

					<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object" src="http://placehold.it/300" alt="">
						</a>
						<div class="media-body">
							<div class="clearfix">
								<a href="#" class="media-heading">Duncan McMart</a>
								<span class="media-notice">January 3, 2014 / 12:14 pm</span>
							</div>
							Quisque dignissim nibh nec massa egestas interdum. Proin congue vulputate velit, sodales mattis neque tempor a.
						</div>
					</li>

					<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object" src="http://placehold.it/300" alt="">
						</a>
						<div class="media-body">
							<div class="clearfix">
								<a href="#" class="media-heading">Lucy Smith</a>
								<span class="media-notice">January 22, 2014 / 10:26 pm</span>
							</div>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget orci non sem sodales dictum.
						</div>
					</li>

					<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object" src="http://placehold.it/300" alt="">
						</a>
						<div class="media-body">
							<div class="clearfix">
								<a href="#" class="media-heading">Angel Nowak</a>
								<span class="media-notice">January 24, 2014 / 10:20 am</span>
							</div>
							Mauris vulputate bibendum justo non pretium. Sed eleifend, est vitae pellentesque condimentum, lacus ligula consectetur dolor, a congue metus odio ut neque.
						</div>
					</li>

					<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object" src="http://placehold.it/300" alt="">
						</a>
						<div class="media-body">
							<div class="clearfix">
								<a href="#" class="media-heading">Barbara Madison</a>
								<span class="media-notice">February 2, 2014 / 10:47 pm</span>
							</div>
							Nullam vel massa blandit turpis sodales consectetur. Maecenas non mattis purus. Nullam vitae risus eu est.
						</div>
					</li>

					<li class="media">
						<a class="pull-left" href="#">
							<img class="media-object" src="http://placehold.it/300" alt="">
						</a>
						<div class="media-body">
							<div class="clearfix">
								<a href="#" class="media-heading">James Willings</a>
								<span class="media-notice">February 16, 2014 / 07:28 am</span>
							</div>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc purus lacus, consequat et dui ut, ullamcorper sollicitudin lorem. Donec gravida eget nisi eget congue. Sed varius sollicitudin adipiscing.
						</div>
					</li>
				</ul>
        	</div>
        	<!-- /recent activity -->


	        <c:import url="templates/ig-footer.jsp" />
