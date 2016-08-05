<%@page import="br.com.carcollection.modelo.Car" %>
<%@page import="br.com.carcollection.modelo.User" %>
<%@page import="br.com.carcollection.web.ExibeDetalhesCarro" %>
<jsp:include page="head.jsp" />

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

						 <form action="exibeDetalhes" method="POST" class="form-horizontal" role="form">
						 	<input type="hidden" name="funcao" value="excluir"/>
						 	<p>
				            <% User usuario = (User)session.getAttribute("USUARIO");
								if (usuario != null){%>	
								<button type="submit" value="Excluir Carro"
										class=" shop_now_btn btn btn-default hvr-bounce-to-left">Excluir Automóvel</button>
							<%} %>	
							</p>
						</form>
						 	<p>
				            <% usuario = (User)session.getAttribute("USUARIO");
								if (usuario != null){%>
								<button onclick="window.location.href='editacarro.jsp'"
										class=" shop_now_btn btn btn-default hvr-bounce-to-left">Editar Automóvel</button>
							<%} %>	
							</p>                      		 	
				                              		
					</div>
				</div>

			</div>
		</div>
	</div>
<jsp:include page="footer.jsp" />