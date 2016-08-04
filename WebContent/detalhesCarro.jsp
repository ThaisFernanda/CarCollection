<%@page import="br.com.carcollection.modelo.Car" %>
<%@page import="br.com.carcollection.modelo.User" %>
<%@page import="br.com.carcollection.web.ExibeDetalhesCarro" %>
<jsp:include page="head.jsp" />

	<!-- Contact-Section-End -->
	<div class="contact_us section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="contact_us">
						<h4>Detalhes do Carro</h4>
						
						<% Car carro = (Car) request.getAttribute("carro"); %>
						
						<form action="adicionaCarro" method="POST" class="form-horizontal" role="form">
							<div class="form-group">
											<ul class="form-horizontal">
			                    				<li style="height: 204px;">
							                       <p>
							                            <strong>Marca:</strong> <% out.println(carro.getMarca());%><br>
							                            <strong>Modelo:</strong> <% out.println(carro.getModelo());%> GT<br>
							                            <strong>Ano Fabricação/Ano Modelo:</strong> <% out.println(carro.getAnoFabricacao());%><br>
							                            <strong>Cor:</strong> <% out.println(carro.getCor());%><br>
							                            <strong>Portas:</strong> 2<br>
							                            <strong>Dimensões - Comp./Largura/Altura (mm): </strong><% out.println(carro.getDimensoesCLA() );%><br>
							                            <strong>Ocupantes:</strong> <% out.println(carro.getOcupantes());%><br>
							                        </p>
							                    </li>
							                    <li style="height: 204px;">
							                         <p>
									                   <strong>Combustível:</strong> <% out.println(carro.getMecSseg().getCombustivel());%><br>
									                   <strong>Motor:</strong> <% out.println(carro.getMecSseg().getMotor());%><br>
									                   <strong>Potência:</strong> <% out.println(carro.getMecSseg().getMotor());%> CV<br>
									                   <strong>Velocidade Máxima:</strong> <% out.println(carro.getMecSseg().getVelocidadeMax());%> Km/h<br>
									                   <strong>Câmbio:</strong> <% out.println(carro.getMecSseg().getCambio());%>  <br>
									                   <strong>Tração:</strong> <% out.println(carro.getMecSseg().getTracao());%><br>
									                   <strong>Aceleração 0-100km/h:</strong> <% out.println(carro.getMecSseg().getAceleracao());%> Segundos<br>
									                   <strong>Freios:</strong> <% out.println(carro.getMecSseg().getFreios());%><br>
									                   <strong>Rodas:</strong> <% out.println(carro.getMecSseg().getRodas());%><br>
				                              		 </p>
				                              		
				                    			</li>
				                    		</ul>
							</div>
							
						</form>

						 <form action="exibeDetalhes" method="POST" class="form-horizontal" role="form">
						 	<input type="hidden" name="funcao" value="excluir"/>
						 	<p>
				            <% User usuario = (User)session.getAttribute("USUARIO");
								if (usuario != null){%>
								<input type="submit" value="Excluir Carro"/>
							<%} %>	
							</p>
						</form>
				                              		 	
				                              		
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Contact-Section-End -->
	<!-- Footer-Section-Start -->
	<footer>
		<div class="footer_top footer-padding">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-sm-6">
						<div class="newsletter">
							<h4>Cadastre-se e receba novidades</h4>
						</div>
					</div>
					<div class="col-sm-12 col-sm-6">
						<div class="newsletter text-right">
							<input class="news_input" type="text" value=""
								placeholder="E-mail" /> <input class="subscribe_btn"
								type="button" value="Inscrever" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_bottom footer-padding">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-xs-12">
						<div class="copyright">
							<p>
								<p>Copyright 2016 <a href="http://designscrazed.org/"></a>  Todos os Direiros Reservados</p>

							</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</footer>
	<!-- Footer-Section-End -->
	<!-- All js Files Here -->
	<!-- jquery-1.11.3 -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- revolution js -->
	<script type="text/javascript"
		src="lib/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="lib/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="lib/rs-plugin/rs.home.js"></script>
	<!-- search-box js -->
	<script src="js/search-box.js"></script>
	<!-- scrollUp js -->
	<script src="js/jquery.scrollUp.js"></script>
	<!-- mobilemenu js -->
	<script src="js/jquery.meanmenu.js"></script>
	<!-- Google Map js -->
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script>
		function initialize() {
			var mapOptions = {
				zoom : 15,
				scrollwheel : false,
				center : new google.maps.LatLng(40.663293, -73.956351)
			};
			var map = new google.maps.Map(document.getElementById('googleMap'),
					mapOptions);
			var marker = new google.maps.Marker({
				position : map.getCenter(),
				animation : google.maps.Animation.BOUNCE,
				icon : 'images/map-marker.png',
				map : map
			});
		}
		google.maps.event.addDomListener(window, 'load', initialize);
	</script>
	<!-- main js -->
	<script src="js/main.js"></script>
</body>
</html>

<jsp:include page="footer.jsp" />