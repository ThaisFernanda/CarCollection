
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login || Loja Carro</title>
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
								<li><a><i class="fa fa-phone"></i>(81)3333-3333</a></li>
								<li><a href="#"><i class="fa fa-envelope-o"></i>atendimento@lojacarro.com.br</a></li>
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
	<!-- Start checkout content -->
	<div class="checkout-content-area page-section-padding">
		<div class="container">
			<div class="row">
				<div class="checkout-content">
					<div class="col-xs-12">
						<div aria-multiselectable="true" role="tablist" id="accordion"
							class="panel-group">
							<div class="panel sauget-accordion">
								<div id="headingOne" role="tab" class="panel-heading">
									<h4 class="panel-title">
										<a aria-controls="checkoutMethod" aria-expanded="true"
											href="#checkoutMethod" data-parent="#accordion"
											data-toggle="collapse" class=""> 1. Faça seu cadastro </a>
									</h4>
								</div>
								<div aria-labelledby="headingOne" role="tabpanel"
									class="panel-collapse collapse in" id="checkoutMethod"
									aria-expanded="true" style="">
									<div class="content-info">
										<div class="col-xs-12 col-sm-9">
											<form action="adicionaUsuario" method="POST" class="form-horizontal" role="form">
											<input type="hidden" name="funcao" value="cadastro">
											
												<div class="checkout-reg">
													<div class="checkReg commonChack">
														<div class="regSaveTime commonChack">
															<p>Faça seu cadastro para anunciar seu automóvel.</p>
														</div>

														<div class="loginFrom">
															<input type="text" name="nome" placeholder="Nome"><br>
															<input type="text" name="email" placeholder="E-mail"><br>
															<input type="text" name="endereco" placeholder="endereco"><br>
															<input type="text" name="telefone" placeholder="telefone"><br>
															<input type="text" name="login" placeholder="Usuário"><br>
															<input type="password" name="senha" placeholder="Senha"><br>
														</div>


													</div>
													<input type="submit" value="Cadastrar" class="shop_now_btn btn btn-default hvr-bounce-to-left" />		
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							<div class="panel sauget-accordion">
								<div id="headingTwo" role="tab" class="panel-heading">
									<h4 class="panel-title">
										<a aria-controls="billingInformation" aria-expanded="false"
											href="#billingInformation" data-parent="#accordion"
											data-toggle="collapse" class="collapsed"> 2. Faça Login </a>
									</h4>
								</div>
								<div aria-labelledby="headingTwo" role="tabpanel"
									class="panel-collapse collapse" id="billingInformation"
									aria-expanded="false" style="height: 0px;">
									<div class="content-info">
									
									<form action="adicionaUsuario" method="POST" class="form-horizontal" role="form">
									<input type="hidden" name="funcao" value="login">
										<div class="col-xs-12">
											<div class="billing-info">
												<div class="regSaveTime commonChack">
													<p>Informe seu login e senha para continuar.</p>
												</div>

												<div class="loginFrom">
													<input type="text" name="login" placeholder="Usuário"><br>
													<input type="password" name="senha" placeholder="Senha"><br>
												</div>
												<input type="submit" value="Fazer Login" class="shop_now_btn btn btn-default hvr-bounce-to-left" />		
											</div>
										</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End checkout content -->
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
								Copyright 2015 <a href="http://designscrazed.org/">Allie</a> All
								rights reserved
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
	<!-- main js -->
	<script src="js/main.js"></script>
</body>
</html>