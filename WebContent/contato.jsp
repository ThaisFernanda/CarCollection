<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contato || Car Collection</title>
	<!-- All css Files Here -->
	<!-- fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,500' rel='stylesheet' type='text/css'>
	<!-- bootstrap css -->
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<!-- fontawesome css -->
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<!-- revolution banner css settings -->
	<link rel="stylesheet" type="text/css" href="lib/rs-plugin/css/settings.css" media="screen" />
	<!-- style css -->
    <link rel="stylesheet" href="style.css">
	<!-- mobilemenu css -->
    <link rel="stylesheet" href="css/meanmenu.min.css"/>
	<!-- responsive css -->
    <link rel="stylesheet" href="css/responsive.css"/>
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
					<div class="col-md-8">
						<div class="contact_us">
							<h4>Deixe sua mensagem e em breve entraremos em contato.</h4>
							<form class="form-horizontal" id="mess_form">
								<div class="form-group">
									<div class="col-sm-6">
										<input type="text" class="form-control" id="inputName" placeholder="Seu nome">
									</div>
									<div class="col-sm-6">
										<input type="email" class="form-control" id="inputEmail3" placeholder="Seu e-mail">
									</div>
								</div>
								<br>
								<div class="form-group">
									<div class="col-sm-6">
										<input type="email" class="form-control" id="inputEmail2" placeholder="Seu numero">
									</div>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="inputSubject" placeholder="Assunto">
									</div>
								</div>
								<br>
								<div class="form-group">
									<div class="col-sm-12">
										<textarea class="form-control" placeholder="Menssagem" rows="9"></textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12 text-center">
										<button type="submit" class=" shop_now_btn btn btn-default hvr-bounce-to-left">Enviar Mensagem</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-4">
						<div class="address_text">
							<div class="single_address">
								<h4>Entre em contato pelos canais de atendimento.</h4>
								<p><span>Tel</span></p>
								<p>(81) 3333-3333</p>
								<p>(81) 99999-99999</p>
							</div>
							<div class="single_address">
								<p><span>Email</span></p>
								<p>atendimento@carcollection.com</p>
							</div>
							<div class="single_address">
								<p><span>Address:</span></p>
								<p>Av. Barreiros, 2541 - Caxanga</p>
								<p>Recife, Pernambuco</p>
							</div>
							<div class="single_address">
								<p><span>Web:</span></p>
								<p>www.carcollection.com</p>
							</div>
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
							<input class="news_input" type="text" value="" placeholder="E-mail"/>
							<input class="subscribe_btn" type="button" value="Inscrever"/>
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
							<p>Copyright 2016 <a href="http://designscrazed.org/"></a>  Todos os Direiros Reservados</p>
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
	<script type="text/javascript" src="lib/rs-plugin/js/jquery.themepunch.tools.min.js"></script>   
	<script type="text/javascript" src="lib/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
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
                zoom: 15,
                scrollwheel: false,
                center: new google.maps.LatLng(40.663293, -73.956351)
              };
              var map = new google.maps.Map(document.getElementById('googleMap'),
                  mapOptions);
              var marker = new google.maps.Marker({
                position: map.getCenter(),
                animation:google.maps.Animation.BOUNCE,
                icon: 'images/map-marker.png',
                map: map
              });
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>  
	<!-- main js -->
    <script src="js/main.js"></script>
  </body>
</html>