<%@page import="java.util.List" %>
<%@page import="br.com.carcollection.modelo.User" %>
<%@page import="br.com.carcollection.modelo.Car" %>
<%@page import="br.com.carcollection.web.BuscaCarro" %>

<jsp:include page="head.jsp" />
	
	<section class="product_area section-padding">
	
		<% List<Car> lista = (List<Car>) request.getAttribute("carros"); 
			for (Car carro : lista ) {
				
		%>
		<%
			User usuario = (User)session.getAttribute("USUARIO");
		if (usuario.getId()==carro.getIdProprietario()) {
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
		<%} %>

		
	 	<%
				}
			%>
		
	</section>
<jsp:include page="footer.jsp" />
