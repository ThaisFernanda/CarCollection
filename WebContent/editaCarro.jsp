<%@page import="br.com.carcollection.modelo.Car" %>
<jsp:include page="head.jsp" />

	<!-- Contact-Section-End -->
	<div class="contact_us section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="contact_us">
						<h4>Atualize as informações do seu carro.</h4>
						<% Car carro = (Car) request.getAttribute("carro"); %>
						
						<form action="editaCarro" method="POST" class="form-horizontal" role="form">

							<div class="form-group">
										<table>
											<tr class="form-horizontal">
												<th>
													<strong>ID: </strong>
												</th>
												<th>
													<input readonly="true" type="text" value="<%out.println(carro.getId());%>">
												</th>
											</tr>
											<tr class="form-horizontal">
												<th>
													<strong>MARCA: </strong>
												</th>
												<th>
													<input name="marca" type="text" value="<%out.println(carro.getMarca());%>">
												</th>
											</tr>
										</table>
											<%-- <ul class="form-horizontal">
			                    				<li style="height: 204px;">
							                       <p>
							                       		<strong>ID: </strong><input readonly="true" type="text" value="<%out.println(carro.getId());%>"><br/>
							                            <strong>MARCA: </strong><input name="marca" type="text" value="<%out.println(carro.getMarca());%>"><br/>
							                            <strong>MODELO: </strong><input name="modelo" type="text" value="<%out.println(carro.getModelo());%>"><br/>
							                            <strong>Ano Fabricação/Ano Modelo: </strong><input name="anoFabricacao" type="text" value="<%out.println(carro.getAnoFabricacao());%>"><br>
							                            <strong>Cor: </strong><input name="cor" type="text" value="<%out.println(carro.getCor());%>"><br>
							                            <strong>Portas: </strong><input name="portas" type="text" value="<%out.println(carro.getPortas());%>"><br>
							                            <strong>Dimensões - Comp./Largura/Altura (cm): </strong><input name="dimensoesCLA" type="text" value="<%out.println(carro.getDimensoesCLA());%>"><br>
							                            <strong>Ocupantes: </strong><input name="ocupantes" type="text" value="<%out.println(carro.getOcupantes());%>"><br>
							                        </p>
							                    </li>
							                   
							                    <li style="height: 204px;"></br></br>
							                         <p>
									                   <strong>Combustível:</strong><input name="combustivel" type="text" value="<%out.println(carro.getMecSseg().getCombustivel());%>"><br>
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
				                    		</ul> --%>
							</div>
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
				

<jsp:include page="footer.jsp" />