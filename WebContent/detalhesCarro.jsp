<%@page import="br.com.carcollection.modelo.Car" %>
<%@page import="br.com.carcollection.web.ExibeDetalhesCarro" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cadastro || Car Collection</title>
<!-- All css Files Here -->
<!-- fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,500'
	rel='stylesheet' type='text/css'>
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- fontawesome css -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- revolution banner css settings -->
<link rel="stylesheet" type="text/css"
	href="lib/rs-plugin/css/settings.css" media="screen" />
<!-- style css -->
<link rel="stylesheet" href="style.css">
<!-- mobilemenu css -->
<link rel="stylesheet" href="css/meanmenu.min.css" />
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css" />
<!-- favicon -->
<link rel="shortcut icon" href="images/favicon.png" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- Header-Section-Strat  -->
	<header>
		<div class="container">
			<div class="header_top">
				<div class="row">
					<div class="col-md-6">
						<div class="header_top_left float-left">
							<ul class="social_icon">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
							<ul class="social_others">
								<li><a><i class="fa fa-phone"></i>(81) 3333-3333</a></li>
								<li><a href="#"><i class="fa fa-envelope-o"></i>atendimento@carcollection.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						<div class="header_top_right text-right">
							<ul>
								<li><a href="login.jsp">Registrar / Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row mega_relative">
				<div class="col-xs-12 col-sm-2">
					<div class="logo head_lo">
						<a href="index.jsp"><img src="images/logo.png" alt="Logo" /></a>
					</div>
				</div>
				<div class="col-sm-10">
					<div class="mainmenu float-right">
						<nav>
							<ul>
								<li><a href="cadastro.jsp">CADASTRO</a></li>
								<li><a href="buscaCarro">CATALOGO </a></li>
								<li><a href="contato.jsp">CONTATO</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- mobile-menu-area start -->
	<!-- mobile-menu-area end -->
	<!-- Header-Section-End  -->

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