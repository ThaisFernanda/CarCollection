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
						<h4>Cadastre as informações do seu carro.</h4>
						
						<form action="adicionaCarro" method="POST" class="form-horizontal" role="form">


							<div class="form-group">

								<div class="col-sm-12">
									<p>Dados do Carro</p>
								</div>

								<div class="col-sm-3">
									<select name="portas"  class="form-control" >
									  <option value="">-- Número de Portas --</option>
									  <option value="2">2 Portas</option>
									  <option value="4">4 Portas</option>
									</select>
								</div>
								<div class="col-sm-3">
									<select name="ocupantes"  class="form-control" >
									  <option value="">-- Número de Ocupantes --</option>
									  <option value="2">2 Lugares</option>
									  <option value="5">5 Lugares</option>
									  <option value="6">6 Lugares</option>
									</select>
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3"  name="marca" placeholder="Marca">
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3" name="modelo" placeholder="Modelo">
								</div>
							</div>


							<br>
							<div class="form-group">
								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputName" name="cor" placeholder="Cor">
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3" name="anoFabricacao" placeholder="Ano de Fabricacao">
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3" name="dimensoesCLA" placeholder="Dimensoes CLA">
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3" name="placa"  placeholder="Placa">
								</div>
							</div>


							<br>
							<div class="form-group">
								<div class="col-sm-3">
								 	<select name="conversivel"  class="form-control" >
									  <option value="">-- Conversivel --</option>
									  <option value="true">Sim</option>
									  <option value="false">Não</option>
									</select> 
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3" name="quilometragem" placeholder="Quilometragem">
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3"  name="valor" placeholder="Valor">
								</div>
							</div>


							<br>

							<hr />

							<div class="form-group">
								<div class="col-sm-12">
									<p>Mecanica</p>
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputName" name="potencia" placeholder="Potencia">
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3" name="velocidadeMax"  placeholder="Velocidade Maxima">
								</div>

								<div class="col-sm-3">
									<select name="combustivel"  class="form-control" >
									  <option value="">-- Combustivel --</option>
									  <option value="Gasolina">Gasolina</option>
									  <option value="Etanol">Etanol</option>
									  <option value="Diesel">Diesel</option>
									  <option value="GNV">Gás Natural (GNV)</option>
									</select>
								</div>

								<div class="col-sm-3">
									<select name="motor"  class="form-control" >
									  <option value="">-- Motor --</option>
									  <option value="1.0">1.0</option>
									  <option value="1.4">1.4</option>
									  <option value="1.6">1.6</option>
									  <option value="1.8">1.8</option>
									  <option value="2.0">2.0</option>
									</select>
								</div>
							</div>
							<br>
							<div class="form-group">
								<div class="col-sm-3">
									<select name="cambio"  class="form-control" >
									  <option value="">-- Câmbio --</option>
									  <option value="CVT">CVTs</option>
									  <option value="automatico">Câmbio automático</option>
									  <option value="semiautomatico">Câmbio Semiautomático</option>
									</select>
								</div>
								<div class="col-sm-3">
									<select name="tracao"  class="form-control" >
									  <option value="">-- Tração --</option>
									  <option value="dianteira">Dianteira</option>
									  <option value="integral">Integral</option>
									  <option value="traseira">Traseira</option>
									  <option value="4x4">4x4</option>
									</select> 
								</div>

								<div class="col-sm-3">
									<select name="freios"  class="form-control" >
									  <option value="">-- Freios --</option>
									  <option value="ar">Ar</option>
									  <option value="disco">Disco</option>
									  <option value="tambor">Tambor</option>
									  <option value="vacuo">Vácuo</option>
									</select> 
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3" name="rodas" placeholder="Rodas">
								</div>
							</div>
							<br>
							
							<div class="form-group">
								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputName" name="airBag" placeholder="AirBag">
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="inputEmail3" name="aceleracao"placeholder="Aceleracao">
								</div>

								<div class="col-sm-3">
									<select name="direcao"  class="form-control" >
									  <option value="">-- Direção --</option>
									  <option value="eletrica">Elétrica</option>
									  <option value="eletrohidraulica">Eletrohidráulica</option>
									  <option value="eletromecanica ">Eletromecânica</option>
									  <option value="hidraulica">Hidráulica</option>
									</select> 
								</div>

							</div>
							<br>
						<hr />
							<div class="form-group">
								<div class="col-sm-12">
									<p>Imagem do Carro</p>
								</div>
								<div class="col-sm-8">
									<input type="file" class="form-control"  id="inputEmail3" name="img" />
								</div>

							</div>
							<br>
							<div class="form-group">
								<div class="col-sm-12 text-center">
									<button type="submit"
										class=" shop_now_btn btn btn-default hvr-bounce-to-left">Cadastrar Automóvel</button>
								</div>
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