<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="FM.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="wide wow-animation" lang="en">
  <head>
    <title>FestiNelson</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700|Kreon:700|Audiowide&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lato:400,700%7COpen+Sans:400,600,700%7CSource+Code+Pro:300,400,500,600,700,900%7CNothing+You+Could+Do%7CPoppins:400,500">
    <link rel="stylesheet" href="css/paginate.css">
    <link rel="stylesheet" href="css/dd.css?v=4.0">
    <link rel="stylesheet" type="css" href="assets/css/flags.css?v=1.0" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/style.css">

    
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
  </head>
  <style>
  .container2 {
    width: 795px;
    margin: 0 auto;
    color: #ffffff;
    font-family: "Open Sans", sans-serif;
    font-weight: 400;
    font-size: 25px;
  }

  	section {
    position: relative;  
    background-image: url(https://htmlpdfapi.com/uploads/images/568b96887261690f6dbe0000/content_background-concert-3.jpg?1451988615);
    background-repeat: no-repeat;
    overflow: hidden;
  }
  section .left {
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    float: left;
    width: 635px;
    padding: 35px 0 0 60px;
  }
  section .right5 {
    float: right;
    width: 160px;
    padding-top: 30px;
  }
  section .event {
    margin-bottom: 40px;
    font-weight: 700;
    font-size: 0.36 em;
    line-height: 35px;
    text-transform: uppercase;
  }
  section .title {
    margin-bottom: 35px;
    color: #F5A623;
    font-family: "Audiowide", cursive;
    font-size: 3em;
    line-height: 72px;
  }
  section .info {
    font-size: 0.8em;
    text-transform: uppercase;
  }
  section .seats {
    margin-bottom: 35px;
    font-size: 0.36em;
    text-transform: uppercase;
    text-align: right;
  }
  section .seats:last-child {
    margin-bottom: 0;
  }
  section .seats span {
    display: inline-block;
    width: 80px;
    margin-left: 15px;
    padding: 10px 0;
    color: #F5A623;
    background: rgba(255, 255, 255, 0.5);
    font-family: "Kreon", serif;
    font-size: 2.777em;
    text-align: center;
    vertical-align: middle;
  }
  
  </style>

  <body>
  <%
	ArrayList<TipoEntrada> tipoEntradas = new ArrayList<TipoEntrada>();
  	ArrayList<Cliente> clientes = new ArrayList<Cliente>();
	ArrayList<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
	BDController bdController = new BDController();
	tipoEntradas = bdController.todosTiposEntrada();
	tarjetas = bdController.todasTarjetas();
	%>
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
      </div>
    </div>
    <div class="page">
      <!-- Page Header-->
      <header class="section page-header">
        <!--RD Navbar-->
        <div class="rd-navbar-wrap" style="position: absolute">
          <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px" data-xxl-stick-up-offset="46px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse"><span></span></div>
            <div class="rd-navbar-main-outer">
              <div class="rd-navbar-main">
                <!--RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!--RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!--RD Navbar Brand-->
                  <div class="rd-navbar-brand">
                    <!--Brand--><a class="brand" href="Inicio.jsp"><img src="images/logo1.png" alt="" width="148" height="26"/></a>
                  </div>
                </div>
                <div class="rd-navbar-main-element">
                  <div class="rd-navbar-nav-wrap">
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item"><a class="rd-nav-link" href="Inicio.jsp">Inicio</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="clientes.jsp">Clientes</a>
                      </li>
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="entradas.jsp">Entradas</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="tarjetas.jsp">Tarjetas</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="productos.jsp">Productos</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="rd-navbar-collapse">
                  <ul class="socialite-list">
                    <li><a class="icon novi-icon socialite fa-facebook" href="https://es-es.facebook.com/CentroNelson/" target="_blank"></a></li>
                    <li><a class="icon novi-icon socialite fa-twitter" href="https://twitter.com/CentroNelson?s=20&t=mkIfCpPGUkWTHY_7DF5uIA" target="_blank"></a></li>
                    <li><a class="icon novi-icon socialite fa-instagram" href="https://www.instagram.com/centronelson/" target="_blank"></a></li>
                    <li><a href="adminInicio.jsp">Administración</a></li>
                    
                  </ul>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
	  <section class="breadcrumbs-custom bg-image context-dark" style="background-image: url(images/ent.jpg);">
        <div class="container">
          <h1 style="font-size: 7rem; class="breadcrumbs-custom-title">Entradas</h1>
        </div>
        <ul class="breadcrumbs-custom-path"></ul>
      </section> 
      <br>
      <br>
      <%
      if(request.getParameter("resultado")!= null){
			String resultado = request.getParameter("resultado");
			if(resultado.equalsIgnoreCase("error")){%>
			<div style="text-align: center !important;" class="row grid-responsive">
				<div style="text-align: center !important;" class="column">
					<div style="text-align: center !important;" class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! No se ha podido realizar la venta por alguna causa que se desconoce.</div>
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("errorDisponibilidad")){%>
			<div class="row grid-responsive" style="margin: inherit;">
				<div class="column" style="position: relative; width: 100%; margin-right: 50px; margin-left: 50px;">
					<div class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! Ya no quedan más entradas de el tipo seleccionado</div>				
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("errorTarjeta")){%>
			<div class="row grid-responsive" style="margin: inherit;">
				<div class="column" style="position: relative; width: 100%; margin-right: 50px; margin-left: 50px;">
					<div class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! La tarjeta seleccionada no existe en la base de datos</div>				
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("errorSaldo")){%>
			<div class="row grid-responsive" style="margin: inherit;">
				<div class="column" style="position: relative; width: 100%; margin-right: 50px; margin-left: 50px;">
					<div class="alert background-danger"><em class="fa fa-times-circle"></em> ¡ERROR! No tienes saldo suficiente para realizar la compra</div>				
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("exito")){%>
			<div class="row grid-responsive" style="margin: inherit;">
				<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
					<div class="alert background-success"><em class="fa fa-thumbs-up"></em> Compra realizada con exito</div>				
				</div>
			</div>
			<%}else if(resultado.equalsIgnoreCase("exitoListado")){%>
			<div class="row grid-responsive">
			<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
				<div class="alert background-success"><em class="fa fa-thumbs-up"></em> Descarga realizada con exito</div>				
			</div>
			</div>
			<%}
			else{%>
			<%}
		}%>
      	<div class="container " style="text-align: center;">
				<div class="panel">
        			<div class="body">
            			<div style="text-align: right;">
                			<input type="search" id="searchBox" placeholder="Filtrar..." style="margin-bottom: 10px;">
            			</div>
       				</div>
    			</div>
    	<table class="myTable table hover" style="text-align: center;">      
		<%for (int i = 0; i < tipoEntradas.size(); i++) {%>
		<tbody>
    	<tr>
   		<td>
       <br>
       <div class="container2">
    	<section class="">
      		<div class="left" style="">
        		<div class="info"><%=tipoEntradas.get(i).getDescripcion() %></div>
        		<div class="title">FestiNelson</div>
        		<div class="info">SÁBADO // 27 AGOSTO 2020 // CHAMBERÍ // MADRID</div>
      		</div>
      		<div class="right">
        		<div class="seats">tipo<span><%=tipoEntradas.get(i).getId_tipoEntrada() %></span></div>
        		<div class="seats">zona<span>Pista</span></div>
        		<div class="seats">precio<span><%=tipoEntradas.get(i).getPrecio() %>€</span></div>
      		</div>
      	  </section>
	  	</div>
  		<form action="operaciones.jsp?tipo=comprarEntrada&id_tipoEntrada=<%=tipoEntradas.get(i).getId_tipoEntrada() %>" method="post">
			<fieldset  style="text-align: center !important;">
				<select style="width: 795px;" id="id_tarjeta" name="id_tarjeta" is="ms-dropdown" required style="width: 450px" data-child-height="105" >
					<option  value="">selecciona el ID  de la tarjeta</option>
					<%for(int j = 0;j<tarjetas.size();j++) {%>
					<option value="<%=tarjetas.get(j).getId_tarjeta()%>"><%=tarjetas.get(j).getId_tarjeta()%></option>
					<%}%>
				</select>
				<br>
				<div class="product__footer">
					<input class="button button-xs button-gray-2" type="submit" value="Comprar" style="background-color: orange;  border: none;">
				</div>
			</fieldset>
		</form>
		</td>
		</tr>
		</tbody>
	  <%} %>
	  	</table>
	  	<form action="operaciones.jsp?tipo=descargarListadoEntradas" method="post">
				<fieldset>
					<div style="text-align: center;">
						<input class="button-primary" type="submit" value="Descargar listado en PDF">
					</div>
				</fieldset>
			</form>
      <footer class="section footer-classic bg-default">
        <div class="container">
          <div class="row row-15">
            <div class="col-sm-6">
              <p class="rights"><span>FestiNelson</span><span>&nbsp;</span><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>\&nbsp;</span>Todos los derechos reservados
              </p>
            </div>
            <div class="col-sm-6">
              <div class="footer-contact">
                  Samuel Fernández Pérez
          </div>
        </div>
      </footer>
    </div>
    <div class="snackbars" id="form-output-global"></div>
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/dd.min.js?ver=4.0"></script>
	<script type="text/javascript" src="js/paginate.js"></script>	
	<script>

    let options = {
        numberPerPage:1, //Cantidad de datos por pagina
        goBar:true, //Barra donde puedes digitar el numero de la pagina al que quiere ir
        pageCounter:true, //Contador de paginas, en cual estas, de cuantas paginas
    };

    let filterOptions = {
        el:'#searchBox' //Caja de texto para filtrar, puede ser una clase o un ID
    };

    paginate.init('.myTable',options,filterOptions);
</script>
    <!--coded by houdini-->
  </body>
</html>