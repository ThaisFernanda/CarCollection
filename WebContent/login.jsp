<jsp:include page="head.jsp" />

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
											data-toggle="collapse" class=""> 1. Fa�a seu cadastro </a>
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
															<p>Fa�a seu cadastro para anunciar seu autom�vel.</p>
														</div>

														<div class="loginFrom">
															<input type="text" name="nome" placeholder="Nome"><br>
															<input type="text" name="email" placeholder="E-mail"><br>
															<input type="text" name="endereco" placeholder="endereco"><br>
															<input type="text" name="telefone" placeholder="telefone"><br>
															<input type="text" name="login" placeholder="Usu�rio"><br>
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
											data-toggle="collapse" class="collapsed"> 2. Fa�a Login </a>
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
													<input type="text" name="login" placeholder="Usu�rio"><br>
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

<jsp:include page="footer.jsp" />