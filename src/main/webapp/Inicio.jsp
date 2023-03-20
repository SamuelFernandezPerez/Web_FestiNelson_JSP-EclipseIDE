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
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lato:400,700%7COpen+Sans:400,600,700%7CSource+Code+Pro:300,400,500,600,700,900%7CNothing+You+Could+Do%7CPoppins:400,500">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
  </head>
  <body>
  <%
	ArrayList<Producto> productos = new ArrayList<Producto>();
  	ArrayList<Cliente> clientes = new ArrayList<Cliente>();
	BDController bdController = new BDController();
	productos = bdController.todosProductos();
	clientes = bdController.todosClientes();		
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
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="Inicio.jsp">Inicio</a>
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
      <!--Swiper-->
      <section class="section swiper-container swiper-slider swiper-slider-1" data-loop="true" data-autoplay="3892" data-simulate-touch="false">
        <div class="swiper-wrapper text-center">
          <div class="swiper-slide context-dark" data-slide-bg="images/festiNelson5.jpg">
            <div class="swiper-slide-caption section-md">
              <div class="container">
                <div class="row justify-content-lg-center">
                  <div class="col-lg-8">
                    <h5 data-caption-animate="fadeInUp" data-caption-delay="100">No es solo amor por la música.</h5>
                    <h1 style= "color: #fee600" data-caption-animate="fadeInUp" data-caption-delay="200">Es nuestra pasión</h1>
                    <div class="button-wrap" data-caption-animate="fadeInUp" data-caption-delay="300"><a class="button button-modern button-custom-size-1" href="entradas.jsp">Comprar entradas</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide context-dark" data-slide-bg="images/festiNelson3.jpg">
            <div class="swiper-slide-caption section-md">
              <div class="container">
                <div class="row justify-content-lg-center">
                  <div class="col-lg-8">
                    <h5 data-caption-animate="fadeInUp" data-caption-delay="100">Los mejores DJ,s de CHAMBERÍ</h5>
                    <h1 style= "color: #fee600" data-caption-animate="fadeInUp" data-caption-delay="200">En un único evento</h1>
                    <div class="button-wrap" data-caption-animate="fadeInUp" data-caption-delay="300"><a class="button button-modern button-custom-size-1" href="entradas.jsp">Comprar entradas</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide context-dark" data-slide-bg="images/festiNelson6.jpg">
            <div class="swiper-slide-caption section-md">
              <div class="container">
                <div class="row justify-content-lg-center">
                  <div class="col-lg-8">
                    <h5 data-caption-animate="fadeInUp" data-caption-delay="100">Vamos hacer historia.</h5>
                    <h1 style= "color: #fee600" data-caption-animate="fadeInUp" data-caption-delay="200">¡Que no te lo cuenten!</h1>
                    <div class="button-wrap" data-caption-animate="fadeInUp" data-caption-delay="300"><a class="button button-modern button-custom-size-1" href="entradas.jsp">Comprar entradas</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--Swiper Pagination-->
        <div class="swiper-pagination"></div>
      </section>
      <section class="section section-xl bg-default text-center">
     <%
     Producto producto1 = bdController.dameproducto(bdController.idMinProducto());
     Producto producto2 = bdController.dameproducto(bdController.idMinProducto() + 1);
     Producto producto3 = bdController.dameproducto(bdController.idMinProducto() + 2);
     %>
		
        <div class="container">
          <h6 class="text-gray-600">Nuestros productos</h6>
          <h2>EQUÍPATE PARA EL FESTIVAL</h2>
          <div class="row row-125">
            <div class="col-md-6 col-lg-4">
              <article class="post-classic">
                <figure class="post-classic-figure"><a href="productos.jsp"><img src="images/productos/<%=producto1.getId_producto()%>.PNG" alt="" width="346" height="130" title='<%= producto1.getNombre()%>'/></a></figure>
                <div class="post-classic-content">
                  <time class="post-classic-time" datetime="2019-09-19"><%=producto1.getPrecio() %> €</time>
                  <h5 class="post-classic-title"><%=producto1.getNombre()%></h5><a class="post-classic-link" href="productos.jsp">Más productos</a>
                </div>
              </article>
            </div>
            <div class="col-md-6 col-lg-4">
              <article class="post-classic">
                <figure class="post-classic-figure"><a href="productos.jsp"><img src="images/productos/<%=producto2.getId_producto()%>.PNG" alt="" width="346" height="130" title='<%= producto2.getNombre()%>'/></a></figure>
                <div class="post-classic-content">
                  <time class="post-classic-time" datetime="2019-09-19"><%=producto2.getPrecio() %> €</time>
                  <h5 class="post-classic-title"><%=producto2.getNombre()%></h5><a class="post-classic-link" href="productos.jsp">Más productos</a>
                </div>
              </article>
            </div>
            <div class="col-md-6 col-lg-4">
              <article class="post-classic">
                <figure class="post-classic-figure"><a href="productos.jsp"><img src="images/productos/<%=producto3.getId_producto()%>.PNG" width="346" height="130" title='<%= producto3.getNombre()%>'/></a></figure>
                <div class="post-classic-content">
                  <time class="post-classic-time" datetime="2019-09-19"><%=producto3.getPrecio() %> €</time>
                  <h5 class="post-classic-title"><%=producto3.getNombre()%></h5><a class="post-classic-link" href="productos.jsp">Más productos</a>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>
      <section class="parallax-container section-lg text-center" data-parallax-img="images/festiNelson4.jpg">
        <div class="parallax-content">
          <div class="container">
            <h6 class="">FestiNelson en Madrid, España - Agosto 27, 2022</h6>
            <h2>FIESTA DE FIN DE CURSO</h2>
            <div class="row justify-content-center">
              <div class="col-lg-11">
                <div class="post-event">
                <div id="contadorSamuel"></div>
                  <div class="countdown" data-type="until" data-time="Fri Aug 27 2022 18:00:00 GMT+0200"></div><img src="images/festiNelson2.jpg" alt="" width="571" height="156"/><a class="button button-primary button-lg" href="entradas.jsp">Comprar entradas</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="section section-xl bg-default text-center">
     <%
     Cliente cliente1 = bdController.dameCliente(bdController.idMaxCliente());
     Cliente cliente2 = bdController.dameCliente(bdController.idMaxCliente()-1);
     Cliente cliente3 = bdController.dameCliente(bdController.idMaxCliente()-2);    
     %>
        <div class="container">
          <h6 class="text-gray-600">Nuestros clientes</h6>
          <h2>ULTIMOS CLIENTES</h2>
          <div class="row row-125">
            <div class="col-md-6 col-lg-4">
              <article class="post-classic">
                <figure class="post-classic-figure"><a href="cliente.jsp?id_cliente=<%=cliente1.getId_cliente() %>"><img src="images/clientes/<%=cliente1.getId_cliente()%>.jpg" alt="" width="346" height="130" title='<%= cliente1.getNombre()%>'/></a></figure>
                <div class="post-classic-content">
                  <time class="post-classic-time" datetime="2019-09-19"><%=cliente1.getProvincia() %></time>
                  <h5 class="post-classic-title"><%=cliente1.getNombre()%></h5><a class="post-classic-link" href="clientes.jsp">Más clientes</a>
                </div>
              </article>
            </div>
            <div class="col-md-6 col-lg-4">
              <article class="post-classic">
                <figure class="post-classic-figure"><a href="cliente.jsp?id_cliente=<%=cliente2.getId_cliente() %>"><img src="images/clientes/<%=cliente2.getId_cliente()%>.jpg" alt="" width="346" height="130" title='<%= cliente2.getNombre()%>'/></a></figure>
                <div class="post-classic-content">
                  <time class="post-classic-time" datetime="2019-09-19"><%=cliente2.getProvincia() %></time>
                  <h5 class="post-classic-title"><%=cliente2.getNombre()%></h5><a class="post-classic-link" href="clientes.jsp">Más clientes</a>
                </div>
              </article>
            </div>
            <div class="col-md-6 col-lg-4">
              <article class="post-classic">
                <figure class="post-classic-figure"><a href="cliente.jsp?id_cliente=<%=cliente3.getId_cliente() %>"><img src="images/clientes/<%=cliente3.getId_cliente()%>.jpg" alt="" width="346" height="130" title='<%= cliente3.getNombre()%>'/></a></figure>
                <div class="post-classic-content">
                  <time class="post-classic-time" ><%=cliente3.getProvincia() %></time>
                  <h5 class="post-classic-title"><%=cliente3.getNombre()%></h5><a class="post-classic-link" href="clientes.jsp">Más clientes</a>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>
      
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
    <!--coded by houdini-->
  </body>
</html>