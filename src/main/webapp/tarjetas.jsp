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
     <link rel="stylesheet" href="css/paginate.css">
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
  <body style="background-color: #222d4f">
  <%
	ArrayList<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
	BDController bdController = new BDController();
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
                    <ul class="rd-navbar-nav" style="font-size: 14px;">
                      <li class="rd-nav-item"><a class="rd-nav-link" href="Inicio.jsp">Inicio</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="clientes.jsp">Clientes</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="entradas.jsp">Entradas</a>
                      </li>
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="tarjetas.jsp">Tarjetas</a>
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
              <section class="breadcrumbs-custom bg-image context-dark" style="background-image: url(images/tar.jpg);">
        <div class="container">
          <h1 style="font-size: 10rem;" class="breadcrumbs-custom-title">Tarjetas clientes</h1>
        </div>
        <ul class="breadcrumbs-custom-path"></ul>
      </section>
      <%
      if(request.getParameter("resultado")!= null){
			String resultado = request.getParameter("resultado");
			if(resultado.equalsIgnoreCase("exitoListado")){%>
			<div class="row grid-responsive">
				<div class="column" style="position: relative; width: 100%;  margin-right: 50px; margin-left: 50px;">
					<div class="alert background-success"><em class="fa fa-thumbs-up"></em> Descarga realizada con exito</div>				
				</div>
			</div>
			<%}
			else{%>
			<%}
		}
		%>
      	<div class="row row-50 row-xxl-90 justify-content-sm-center offset-custom-2">
      		<div class="container " style="text-align: center;">
				<div class="panel">
        			<div class="body">
            			<div style="text-align: right;">
                			<input type="search" id="searchBox" placeholder="Filtrar..." style="margin-bottom: 10px;  width: 20rem;">
            			</div>
       				</div>
    			</div>
    			<table class="myTable table hover" style="text-align: center;">
     			<%
     			String tipoTarjetaDelantera ="";
    			 String tipoTarjetaTrasera ="";
     			for (int i = 0; i < tarjetas.size(); i++) {
     			Cliente cliente = bdController.dameCliente(tarjetas.get(i).getId_cliente()); 
     
     			if (tarjetas.get(i).getSaldo() > 100){
    				tipoTarjetaDelantera = "delantera1";
    	 			tipoTarjetaTrasera ="trasera1";
     			}else{
    	 			tipoTarjetaDelantera = "delantera2";
    	 			tipoTarjetaTrasera ="trasera2";
     			}
     			%> 
    				<tbody>
    					<tr>
   				 			<td>
     							<div class="contenedor">
								<!-- Tarjeta -->
									<section class="tarjeta" id="tarjeta">
										<div class="<%=tipoTarjetaDelantera %>">
											<div class="flexbox">
												<img src="img/chip-tarjeta.png" class="chip" alt="">
												<div class="logo-marca" id="logo-marca"><img src="images/logo1.png" alt=""></div>
											</div>
											<div class="datos">
												<div class="grupo" id="numero"><img src = "images/clientes/<%=tarjetas.get(i).getId_cliente() %>.jpg" width='110' height='110' title='<%= cliente.getNombre()%>'></div>
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
						</td>
					</tr>
				</tbody>
				<%} %>
			</table>
		</div>
		</div>
		<form action="operaciones.jsp?tipo=descargarListadoTarjetas" method="post">
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
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
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