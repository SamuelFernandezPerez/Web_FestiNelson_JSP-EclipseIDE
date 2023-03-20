<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="FM.*" %>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>FestiNelson</title>
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">
	<link rel="stylesheet" href="css/paginate.css">
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
	ArrayList<VentaProductos> ventasproductos = new ArrayList<VentaProductos>();
	BDController bdController = new BDController();
	ventasproductos = bdController.todasVentasProductos();
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
			<h5 class="mt-2">todas las ventas de productos</h5><a class="anchor" name="tables"></a>
			<div class="row grid-responsive">
				<div class="column ">
					<div class="card">
						<div class="card-block">
								<div class="container" style="text-align: center;">
						 	<div class="panel">
        						<div class="body">
            						<div class="input-group">
                						<input type="search" id="searchBox" placeholder="Filtrar...">
            						</div>
       						 	</div>
    						</div>
							<table class="myTable table hover">
								<thead>
									<tr>
										<th>ID venta producto</th>
										<th>ID tarjeta</th>
										<th>ID producto</th>
										<th></th>
									</tr>
								</thead>
								 <%for (int i = 0; i < ventasproductos.size(); i++) {
								 Producto producto = bdController.dameproducto(ventasproductos.get(i).getId_producto());
								 %>
								<tbody>
									<tr>
										<td><%=ventasproductos.get(i).getId_producto() %></td>
										<td><%=ventasproductos.get(i).getId_tarjeta() %></td>
										<td><%=ventasproductos.get(i).getId_producto() %></td>
										<td><img src="images/productos/<%=ventasproductos.get(i).getId_producto() %>.PNG" alt="profile photo" class="circle float-left profile-photo" width="150" height="auto" title='<%= producto.getNombre()%>'></td>	
									</tr>
								</tbody>
								<%} %>
							</table>
							</div>
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
	<script type="text/javascript" src="js/paginate.js"></script>	
	<script>

    let options = {
        numberPerPage:10, //Cantidad de datos por pagina
        goBar:true, //Barra donde puedes digitar el numero de la pagina al que quiere ir
        pageCounter:true, //Contador de paginas, en cual estas, de cuantas paginas
    };

    let filterOptions = {
        el:'#searchBox' //Caja de texto para filtrar, puede ser una clase o un ID
    };

    paginate.init('.myTable',options,filterOptions);
</script>
</body>
</html> 