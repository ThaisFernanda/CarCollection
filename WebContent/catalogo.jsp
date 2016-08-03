<%@page import="java.util.List" %>
<%@page import="br.com.carcollection.modelo.Car" %>
<%@page import="br.com.carcollection.web.BuscaCarro" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Catalogo || Car Collection</title>
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
									<li><a href="contato.jsp">CONTATO </a></li>
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
	<!-- Product-Section-Strat  -->
	
	
	
	<section class="product_area section-padding">
	
		<% List<Car> lista = (List<Car>) request.getAttribute("carros"); 
			for (Car carro : lista ) {
				
		%>
		
		
		<div class="padding_right main_single_product">
			<div class="single_product">
				<div class="product_img">
					<img src="images/product/tre-shirt-1.png" alt="DARK BLUE IMAGE" />
				</div>
				
			</div>
		</div>
		
	
		
	
		<div class="padding_left main_single_product">
			<div class="single_product single_product_two">
				<div class="product_img">
					<img src="images/product/tre-shirt-1.png" alt="DARK BLUE IMAGE" />
				</div>
				<div class="product_text_two product_text">
					<h1><% out.println(carro.getMarca());%></h1>
					<p>Modelo: <% out.println(carro.getModelo());%></p>
					<p>Ano: <% out.println(carro.getAnoFabricacao());%></p>
					<p>Valor: <% out.println(carro.getValor());%></p>
					<!-- <a class="shop_now_btn" href="#">Detalhes</a>-->
					
					<a class="shop_now_btn" href="exibeDetalhes?idCarro=<%=carro.getId() %>">Detalhes</a>
					
				</div>
			</div>
		</div>
	
		
	 	<%
				}
			%>
		
	</section>
	<!-- Product-Section-End  -->
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
	<!-- main js -->
    <script src="js/main.js"></script>
    
  </body>
</html>