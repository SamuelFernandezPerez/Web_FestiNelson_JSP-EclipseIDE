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
     <link href="https://fonts.googleapis.com/css?family=Lato|Liu+Jian+Mao+Cao&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
	
	<!-- CSS Reset -->
	<link rel="stylesheet" href="css/normalize.css">
	
	<!-- Milligram CSS minified -->
	<link rel="stylesheet" href="css/milligram.min.css">
	
	<!-- Main Styles -->
	
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lato:400,700%7COpen+Sans:400,600,700%7CSource+Code+Pro:300,400,500,600,700,900%7CNothing+You+Could+Do%7CPoppins:400,500">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/styles.css">
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
  section{
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
  
  <body style="background-color: #222d4f">
  <%
  	String id_cliente = request.getParameter("id_cliente");
	BDController bdController = new BDController();
	ArrayList<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
	ArrayList<TipoEntrada> tiposEntradas = new ArrayList<TipoEntrada>();
	Cliente cliente = bdController.dameCliente(Integer.parseInt(id_cliente));
	tarjetas = bdController.dameTarjetasPorIdCliente(Integer.parseInt(id_cliente));
	tiposEntradas = bdController.dameEntradasPorIdCliente(Integer.parseInt(id_cliente));
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
                      <li class="rd-nav-item"><a class="rd-nav-link" href="entradas.jsp">Entradas</a>
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
             <br>
     <br>
     <div style="    font: 600 30px/31px Playfair Display, Helvetica, sans-serif;
    padding: 0 0 20px;
    margin: 160px 0 30px;
    position: relative;
    color: #000;
    text-transform: capitalize;
    text-align: center !important;
    width: 100% !important;
    height: 5rem;
    float: none !important;
    background-color: #4ac4cf !important;
        display: inline-block !important;
    "><h1>Los datos de <%=cliente.getNombre() %></h1></div> 
		<section class="section section-lg bg-default" style="margin-top: 1rem">
        <div class="container">
          <div class="row row-50 flex-md-row-reverse">
            <div class="col-md-6 text-center">
              <div class="box-image-1"><img src="images/clientes/<%=cliente.getId_cliente() %>.jpg" alt="" width="468" height="276" title='<%= cliente.getNombre()%>'/>
              </div>
            </div>
            <div class="col-md-6">
              <div class="box-about">
                <div class="box-about-title-wrap">
                  <h2 class="box-about-mega-title"><%=cliente.getNombre() %></h2>
                  <h2 class="box-about-title"><%=cliente.getApellidos() %></h2>
                </div>
                <h4 class="box-about-post-title" style="color: #4ac4cf !important;">Provincia: <%=cliente.getProvincia() %> (<%=cliente.getCp() %>)</h4>
                <h5 class="box-about-post-title" style="color: white !important;">Dirección: <%=cliente.getDireccion() %></h5>
                <h5 class="box-about-post-title" style="color: white !important;">Dni: <%=cliente.getDni() %></h5>
                <h5 class="box-about-post-title" style="color: white !important;">Fecha de nacimiento: <%=cliente.getFecha_nacimiento() %></h5>
              </div>
            </div>
          </div>
        </div>
      </section>
      <div style="    font: 600 30px/31px Playfair Display, Helvetica, sans-serif;
    padding: 0 0 20px;
    margin: 0 0 30px;
    position: relative;
    color: #000;
    text-transform: capitalize;
    text-align: center !important;
    width: 100% !important;
    height: 5rem;
    float: none !important;
    background-color: #4ac4cf !important;
        display: inline-block !important;
    "><h1>Las entradas de <%=cliente.getNombre() %></h1></div>
      <% for (int i = 0; i < tiposEntradas.size(); i++) {%>
       <br>
       <br>
      <div class="container2" style="margin-top: 4rem; margin-bottom: 1rem">
    <section class="" style=" position: relative;  width: 100%; background-image: url(https://htmlpdfapi.com/uploads/images/568b96887261690f6dbe0000/content_background-concert-3.jpg?1451988615); background-repeat: no-repeat; overflow: hidden;">
      <div class="left"> 
        <div class="info"><%=tiposEntradas.get(i).getDescripcion() %></div>
        <div class="title">FestiNelson</div>
        <div class="info">SÁBADO // 27 AGOSTO 2020 // CHAMBERÍ // MADRID</div>
      </div>
      <div class="right">
        <div class="seats">tipo<span><%=tiposEntradas.get(i).getId_tipoEntrada() %></span></div>
        <div class="seats">zona<span>Pista</span></div>
        <div class="seats">precio<span><%=tiposEntradas.get(i).getPrecio() %>€</span></div>
      </div>
      <hr>
    </section>
  </div>
  <%} %>
       <br>
     <br>
     <div style="    font: 600 30px/31px Playfair Display, Helvetica, sans-serif;
    padding: 0 0 20px;
    margin: 0 0 30px;
    position: relative;
    color: #000;
    text-transform: capitalize;
    text-align: center !important;
    width: 100% !important;
    height: 5rem;
    float: none !important;
    background-color: #4ac4cf !important;
        display: inline-block !important;
    "><h1>Las tarjetas de <%=cliente.getNombre() %></h1></div> 
       <%
     String tipoTarjetaDelantera ="";
     String tipoTarjetaTrasera ="";
     for (int i = 0; i < tarjetas.size(); i++) {
     
     if (tarjetas.get(i).getSaldo() > 100){
    	 tipoTarjetaDelantera = "delantera1";
    	 tipoTarjetaTrasera ="trasera1";
     }else{
    	 tipoTarjetaDelantera = "delantera2";
    	 tipoTarjetaTrasera ="trasera2";
     }
     %> 
       <div class="contenedor" style="margin-top: 1rem">
		<!-- Tarjeta -->
		<section class="tarjeta" id="tarjeta">
			<div class="<%=tipoTarjetaDelantera %>">
			<div class="flexbox">
				<img src="img/chip-tarjeta.png" class="chip" alt="">
				<div class="logo-marca" id="logo-marca">
					<img src="images/logo1.png" alt="">
				</div>
			</div>
				<div class="datos">
					<div class="grupo" id="numero">
						<img src = "images/clientes/<%=tarjetas.get(i).getId_cliente() %>.jpg" width='110' height='110' title='<%= cliente.getNombre()%>'>
					</div>
					<div class="flexbox">
						<div class="grupo" id="nombre">
							<p class="label">Nombre Tarjeta</p>
							<p class="nombre"><%=cliente.getNombre() %> <%=cliente.getApellidos() %></p>
						</div>
						<div class="grupo" id="expiracion">
							<p class="label">Saldo</p>
							<p class="expiracion"><%=tarjetas.get(i).getSaldo() %>€</p>
						</div>
					</div>
				</div>
			</div>
			<div class="<%=tipoTarjetaTrasera %>">
				<div class="barra-magnetica"></div>
				<div class="datos">
					<div class="grupo" id="firma">
						<p class="label">Firma</p>
						<div class="firma"><p><%=cliente.getNombre() %></p></div>
					</div>
					<div class="grupo" id="ccv">
						<p class="label">ID Tarjeta</p>
						<p class="ccv"><%=tarjetas.get(i).getId_tarjeta() %></p>
					</div>
				</div>
				<p class="leyenda">Esta tarjeta es para uso exclusivo del festival, cualquier otro uso será bajo su responsabilidad. Una vez terminado el festival recomendamos cortar la tarjeta en cachos y tirarlos a la papelera de color amarillo.</p>
				<a href="#" class="link-banco">www.FestiNelson.com</a>
			</div>
			
		 </section>
		  <div class="contenedor-btn">
			<a href="tarjeta.jsp?id_cliente=<%=cliente.getId_cliente() %>"><button class="btn-abrir-formulario" id="btn-abrir-formulario">
				<i class="fas fa-plus"></i>
			</button></a>
			
		</div>
		</div>
		
		<%} %>
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
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
    <!--coded by houdini-->
  </body>
</html>