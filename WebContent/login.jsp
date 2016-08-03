<jsp:include page="head.jsp" />


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

<jsp:include page="footer.jsp" />