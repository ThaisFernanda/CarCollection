<%@page import="br.com.carcollection.modelo.User" %>
<jsp:include page="head.jsp" />
<% User usuario = (User)session.getAttribute("USUARIO");
if (usuario == null){%>
	<center>
	<div class="product_img">
				
		<h1>Usuário não autenticado</h1>
				
	</div>
	</center>
<%} else {%>	
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
									<input type="text" class="form-control" id="inputEmail3" name="aceleracao" placeholder="Aceleracao">
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
							<input type="hidden" readonly="true"  name="idProprietario" type="text" value="<%out.println(usuario.getId());%>">
							
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
	
<%}%>
	

<jsp:include page="footer.jsp" />