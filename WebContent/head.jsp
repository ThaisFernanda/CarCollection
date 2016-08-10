<%@page import="br.com.carcollection.modelo.User" %>
<%@page import="br.com.carcollection.web.AdicionaUsuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Car Collection</title>
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
						<div class="header_top_right float-right">
							<% User usuario = (User)session.getAttribute("USUARIO");
							if (usuario == null){%>
									<a class="shop_now_btn" href="login.jsp">Registrar / Login</a>
								
								<%} else {%>
									<form class="social_login" action="adicionaUsuario"  method="POST" role="form">
										<input type="hidden" name="funcao" value="logout"/>
										<a class="shop_now_btn" ><% out.println(usuario.getNome());%></a>
										<input class="shop_now_btn" type="submit" value="Logout"/>;
									</form>
							
							<%}%>
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
							<% if (usuario != null){%>
								<li><a href="cadastro.jsp">CADASTRO</a></li>
								<%}%>
								<li><a href="buscaCarro">CATALOGO </a></li>
								<li><a href="contato.jsp">CONTATO</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>