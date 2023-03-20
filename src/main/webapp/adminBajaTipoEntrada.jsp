<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="FM.*" %>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>FestiNelson</title>
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">
	
	<link rel="stylesheet" href="css/dd.css?v=4.0">
    <link rel="stylesheet" type="css" href="assets/css/flags.css?v=1.0" />
	
	<!-- Template Styles -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	
	<!-- CSS Reset -->
	<link rel="stylesheet" href="css/normalize.css">
	
	<!-- Milligram CSS minified -->
	<link rel="stylesheet" href="css/milligram.min.css">
	
	<!-- Main Styles -->
	<link rel="stylesheet" href="css/styles.css">
	
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>

<body>
<%
		BDController controladorBD = new BDController();
		ArrayList<TipoEntrada> tiposEntradas = controladorBD.todosTiposEntrada();		
		%>
	<div class="navbar">
		<div class="row">
			<div class="column column-30 col-site-title"><a href="Inicio.jsp" class="site-title float-left">FestiNelson</a></div>
			<div class="column column-30">
				<div class="user-section"><a href="https://www.instagram.com/samuelfernandez_91/" target="_blank">
					<img src="images/yo.jpg" alt="profile photo" class="circle float-left profile-photo" width="50" height="auto">
					<div class="username">
						<h4>Samuel Fernández</h4>
						<p>Administrator</p>
					</div>
				</a></div>
			</div>
		</div>
	</div>
	<div class="row">
		<div id="sidebar" class="column">
			<h5>Navigation</h5>
			<ul>
				<li><a href="adminInicio.jsp#Inicio"><em class="fa fa-home"></em> Inicio</a></li>
				<li><a href="adminInicio.jsp#Clientes"><em class="fa fa-users"></em> Clientes</a></li>
				<li><a href="adminInicio.jsp#Entradas"><em class="fa fa fa-ticket"></em> Entradas</a></li>
				<li><a href="adminInicio.jsp#TiposEntrada"><em class="fa fa-ticket"></em> Tipos de entradas</a></li>
				<li><a href="adminInicio.jsp#Productos"><em class="fa fa-money"></em> Productos</a></li>
				<li><a href="adminInicio.jsp#Tarjetas"><em class="fa fa-credit-card-alt"></em> Tarjetas</a></li>
				<li><a href="adminInicio.jsp#VentaEntradas"><em class="fa fa-handshake-o"></em> Ventas de entradas</a></li>
				<li><a href="adminInicio.jsp#VentaProductos"><em class="fa fa-handshake-o"></em> Ventas de productos</a></li>
			</ul>
		</div>
		<section id="main-content" class="column column-offset-20">
		<h5 class="mt-2">Baja tipo de entrada</h5><a class="anchor"></a>
					<%
		
		if(request.getParameter("resultado")!= null){
			String resultado = request.getParameter("resultado");
			if(resultado.equalsIgnoreCase("error")){%>	
				<div class="row grid-responsive">
					<div class="column">
						<div class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! El tipo de entrada seleccionado no existe en la base de datos</div>
					</div>
				</div>
			<% }
			else if(resultado.equalsIgnoreCase("exito")){%>
			<div class="row grid-responsive">
				<div class="column">
					<div class="alert background-success"><em class="fa fa-thumbs-up"></em> Baja realizada con exito</div>				
				</div>
			</div>
			<%}
			else{%>
			<%}
		}
		%>
			<div class="row grid-responsive">
				<div class="column ">
					<div class="card">
						<div class="card-block">
							<form action="operaciones.jsp?tipo=baja_tipoEntrada" method="post">
								<fieldset>
									<br>
									<select id="id_tipoEntrada" name="id_tipoEntrada" is="ms-dropdown" required style="width:450px" data-child-height="415">
										<option value="">selecciona el tipo de entrada</option>
											<%for(int i = 0;i<tiposEntradas.size();i++) {%>
										<option value="<%=tiposEntradas.get(i).getId_tipoEntrada()%>"><%=tiposEntradas.get(i).getDescripcion()%> </option>
											<%}%>
									</select>
									<br>
									<div class="float-left">
										<input class="button-primary" type="submit" value="Eliminar" style="background-color: red;  border: none;">
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>	
		</section>
	</div>	

	<script>
	window.onload = function () {
		var chart1 = document.getElementById("line-chart").getContext("2d");
		window.myLine = new Chart(chart1).Line(lineChartData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
		});
		var chart2 = document.getElementById("bar-chart").getContext("2d");
		window.myBar = new Chart(chart2).Bar(barChartData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
		});
		var chart4 = document.getElementById("pie-chart").getContext("2d");
		window.myPie = new Chart(chart4).Pie(pieData, {
		responsive: true,
		segmentShowStroke: false
		});
		var chart5 = document.getElementById("radar-chart").getContext("2d");
		window.myRadarChart = new Chart(chart5).Radar(radarData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.05)",
		angleLineColor: "rgba(0,0,0,.2)"
		});
		var chart6 = document.getElementById("polar-area-chart").getContext("2d");
		window.myPolarAreaChart = new Chart(chart6).PolarArea(polarData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		segmentShowStroke: false
		});
	};
	
	</script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/dd.min.js?ver=4.0"></script>			

</body>
</html> 