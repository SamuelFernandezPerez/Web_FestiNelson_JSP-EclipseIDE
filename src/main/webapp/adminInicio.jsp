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
				<li><a href="#Inicio"><em class="fa fa-home"></em> Inicio</a></li>
				<li><a href="#Clientes"><em class="fa fa-users"></em> Clientes</a></li>
				<li><a href="#Entradas"><em class="fa fa fa-ticket"></em> Entradas</a></li>
				<li><a href="#TiposEntrada"><em class="fa fa-ticket"></em> Tipos de entradas</a></li>
				<li><a href="#Productos"><em class="fa fa-money"></em> Productos</a></li>
				<li><a href="#Tarjetas"><em class="fa fa-credit-card-alt"></em> Tarjetas</a></li>
				<li><a href="#VentaEntradas"><em class="fa fa-handshake-o"></em> Ventas de entradas</a></li>
				<li><a href="#VentaProductos"><em class="fa fa-handshake-o"></em> Ventas de productos</a></li>
			</ul>
		</div>
		<section id="main-content" class="column column-offset-20">
		<h5 class="mt-2">Inicio</h5><a class="anchor" name="Inicio"></a>
			<div class="row grid-responsive">
				<div class="column page-heading">
					<div class="large-card">
						<h1>¡Bienvenido Administrador!</h1>
					</div>
				</div>
			</div>
			<h5>Clientes</h5><a class="anchor" name="Clientes"></a>
			<div class="row grid-responsive">
				<div class="column page-heading">
					<div class="large-card">
						<p class="text-large">Gestión y visualización de clientes</p>
						<a href="adminAltaCliente.jsp" class="button" style="background-color: green;  border: none;">Añadir</a>
						<a href="adminModificarCliente.jsp" class="button" style="background-color: orange;  border: none;">Modificar</a>
						<a href="adminBajaCliente.jsp" class="button" style="background-color: red;  border: none;">Eliminar</a>
						<a href="adminListarClientes.jsp" class="button" >Listar</a>
					</div>
				</div>
			</div>
			<h5 class="mt-2">Entradas</h5><a class="anchor" name="Entradas"></a>
			<div class="row grid-responsive">
				<div class="column page-heading">
					<div class="large-card">
						<p class="text-large">Gestión y visualización de entradas</p>
						<a href="adminAltaEntrada.jsp" class="button" style="background-color: green;  border: none;">Añadir</a>
						<a href="adminModificarEntrada.jsp" class="button" style="background-color: orange;  border: none;">Modificar</a>
						<a href="adminBajaEntrada.jsp" class="button" style="background-color: red;  border: none;">Eliminar</a>
						<a href="adminListarEntradas.jsp" class="button">Listar</a>
					</div>
				</div>
			</div>
			<h5 class="mt-2">Tipos de entrada</h5><a class="anchor" name="TiposEntrada"></a>
			<div class="row grid-responsive">
				<div class="column page-heading">
					<div class="large-card">
						<p class="text-large">Gestión y visualización de tipos de entradas</p>
						<a href="adminAltaTipoEntrada.jsp" class="button" style="background-color: green;  border: none;">Añadir</a>
						<a href="adminModificarTipoEntrada.jsp" class="button" style="background-color: orange;  border: none;">Modificar</a>
						<a href="adminBajaTipoEntrada.jsp" class="button" style="background-color: red;  border: none;">Eliminar</a>
						<a href="adminListarTiposEntradas.jsp" class="button">Listar</a>
					</div>
				</div>
			</div>
			<h5 class="mt-2">Productos</h5><a class="anchor" name="Productos"></a>
			<div class="row grid-responsive">
				<div class="column page-heading">
					<div class="large-card">
						<p class="text-large">Gestión y visualización de productos</p>
						<a href="adminAltaProducto.jsp" class="button" style="background-color: green;  border: none;">Añadir</a>
						<a href="adminModificarProducto.jsp" class="button" style="background-color: orange;  border: none;">Modificar</a>
						<a href="adminBajaProducto.jsp" class="button" style="background-color: red;  border: none;">Eliminar</a>
						<a href="adminListarProductos.jsp" class="button">Listar</a>
					</div>
				</div>
			</div>
			<h5 class="mt-2">Tarjetas</h5><a class="anchor" name="Tarjetas"></a>
			<div class="row grid-responsive">
				<div class="column page-heading">
					<div class="large-card">
						<p class="text-large">Gestión y visualización de tarjetas</p>
						<a href="adminAltaTarjeta.jsp" class="button" style="background-color: green;  border: none;">Añadir</a>
						<a href="adminModificarTarjeta.jsp" class="button" style="background-color: orange;  border: none;">Modificar</a>
						<a href="adminBajaTarjeta.jsp" class="button" style="background-color: red;  border: none;">Eliminar</a>
						<a href="adminListarTarjetas.jsp" class="button">Listar</a>
					</div>
				</div>
			</div>
			<h5 class="mt-2">Ventas de entradas</h5><a class="anchor" name="VentaEntradas"></a>
			<div class="row grid-responsive">
				<div class="column page-heading">
					<div class="large-card">
						<p class="text-large">Gestión y visualización de ventas de entradas</p>
						<a href="adminAltaVentaEntrada.jsp" class="button" style="background-color: green;  border: none;">Añadir</a>
						<a href="adminModificarVentaEntrada.jsp" class="button" style="background-color: orange;  border: none;">Modificar</a>
						<a href="adminBajaVentaEntrada.jsp" class="button" style="background-color: red;  border: none;">Eliminar</a>
						<a href="adminListarVentasEntradas.jsp" class="button">Listar</a>
					</div>
				</div>
			</div>
			<h5 class="mt-2">Ventas de productos</h5><a class="anchor" name="VentaProductos"></a>
			<div class="row grid-responsive">
				<div class="column page-heading">
					<div class="large-card">
					<p class="text-large">Añadir y visualización de productos</p>
						<a href="adminAltaVentaProducto.jsp" class="button" style="background-color: green;  border: none;">Añadir</a>
						<a href="adminModificarVentaProducto.jsp" class="button" style="background-color: orange;  border: none;">Modificar</a>
						<a href="adminBajaVentaProducto.jsp" class="button" style="background-color: red;  border: none;">Eliminar</a>
						<a href="adminListarVentasProductos.jsp" class="button">Listar</a>
					</div>
				</div>
			</div>
			<div class="espacio"></div>
		</section>
	</div>
	
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
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

</body>
</html> 