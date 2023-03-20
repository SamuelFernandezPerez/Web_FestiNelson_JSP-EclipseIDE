<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="FM.*" %>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">	
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<title>Operaciones</title>
</head>

<body class="">
		<%
		BDController bdController = new BDController();
		String resultado = "";
		int id_entrada = 0;
		int id_producto = 0;
		int id_ventaentrada = 0;
		int id_ventaproducto = 0;
		int id_tarjeta = 0;
		int id_tipoEntrada = 0;
		int id_cliente = 0;
		String id_productoS = "";
		String id_tarjetaS = "";
		String id_tipoEntradaS ="";
		String id_entradaS = "";
		String id_clienteS = "";
		String id_ventaentradaS = "";
		String id_ventaproductoS = "";
		
		if(request.getParameter("tipo")!= null){
			String tipo = request.getParameter("tipo");
			if(tipo.equalsIgnoreCase("alta_cliente")){							
				String nombre = request.getParameter("nombre");
				String apellidos = request.getParameter("apellidos");
				String dni = request.getParameter("dni");
				String direccion = request.getParameter("direccion");
				String cp = request.getParameter("cp");
				String provincia = request.getParameter("provincia");
				String fechaNac = request.getParameter("fechaNac");
				if(nombre.length()==0 || apellidos.length()==0 || dni.length()==0 || direccion.length()==0 || cp.length()==0 || provincia.length()==0 || fechaNac.length()==0){
					resultado = "incompleto";
			 	}
				else{
					if(bdController.existeDniCliente(dni)==false){
						bdController.altaCliente(dni, nombre, apellidos, direccion, cp, provincia, fechaNac);
						 resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminAltaCliente.jsp?resultado=" + resultado);
			
			}
			else if(tipo.equalsIgnoreCase("alta_entrada")){							
				id_tipoEntradaS = request.getParameter("id_tipoEntrada");
				if(id_tipoEntradaS.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeTipoEntrada(id_tipoEntradaS)==true){
						id_tipoEntrada = Integer.parseInt(id_tipoEntradaS);
						bdController.altaEntrada(id_tipoEntrada);
						 resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminAltaEntrada.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("alta_producto")){							
				String nombre = request.getParameter("nombre");
				String precio = request.getParameter("precio");
				if(nombre.length()==0 || precio.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeNombreProducto(nombre)==false){
						double precioDouble = Double.parseDouble(precio);
						bdController.altaProducto( nombre, precioDouble);
						resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminAltaProducto.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("alta_tarjeta")){							
				String saldo = request.getParameter("saldo");
				id_clienteS = request.getParameter("id_cliente");
				if(saldo.length()==0 || id_clienteS.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeCliente(id_clienteS)==true){
						double saldoDouble = Double.parseDouble(saldo);
						id_cliente = Integer.parseInt(id_clienteS);
						bdController.altaTarjeta( saldoDouble, id_cliente);
						resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminAltaTarjeta.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("alta_tipo_de_entrada")){							
				String descripcion = request.getParameter("descripcion");
				String precio = request.getParameter("precio");
				String cantidad = request.getParameter("cantidad");
				if(descripcion.length()==0 || precio.length()==0 || cantidad.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeDescripcionEntrada(descripcion)==false){
						double precioDouble = Double.parseDouble(precio);
						int cantidadInt = Integer.parseInt(cantidad);
						bdController.altaTipoEntrada( descripcion, precioDouble, cantidadInt);
						resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminAltaTipoEntrada.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("alta_venta_de_entrada")){							
				id_entradaS = request.getParameter("id_entrada");
				id_tarjetaS = request.getParameter("id_tarjeta");
				if(id_entradaS.length()==0 || id_tarjetaS.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeEntrada(id_entradaS)==true){
						if(bdController.existeTarjeta(id_entradaS)==true){
							id_entrada = Integer.parseInt(id_entradaS);
							id_tarjeta = Integer.parseInt(id_tarjetaS);
							bdController.altaVentaEntrada(id_tarjeta, id_entrada);
							resultado = "exito";
						}else{
							resultado = "errorTarjeta";
						}
								
					}else{
						resultado = "errorEntrada";
					}
				}
				response.sendRedirect("adminAltaVentaEntrada.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("alta_venta_de_producto")){							
				id_productoS = request.getParameter("id_producto");
				id_tarjetaS = request.getParameter("id_tarjeta");
				if(id_productoS.length()==0 || id_tarjetaS.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeProducto(id_productoS)==true){
						if(bdController.existeTarjeta(id_productoS)==true){
							id_producto = Integer.parseInt(id_productoS);
							 id_tarjeta = Integer.parseInt(id_tarjetaS);
							bdController.altaVentaProducto(id_tarjeta, id_producto);
							resultado = "exito";
						}else{
							resultado = "errorTarjeta";
						}
								
					}else{
						resultado = "errorProducto";
					}
				}
				response.sendRedirect("adminAltaVentaProducto.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("baja_cliente")){
				id_clienteS = request.getParameter("id_cliente");
				if(bdController.existeCliente(id_clienteS)==true){
					id_cliente = Integer.parseInt(id_clienteS);
					ArrayList<Tarjeta> tarjetas = bdController.dameIDtarjetaPorIDcliente(id_cliente);
					//El cliente puede tener más de una tarjeta. Hay que eliminar todas
					for (int i = 0; i < tarjetas.size(); i++) {
						id_producto = bdController.dameIDVentaProductoPorIDtarjeta(tarjetas.get(i).getId_tarjeta());
						id_ventaentrada = bdController.dameIDVentaEntradaPorIDtarjeta(tarjetas.get(i).getId_tarjeta());
						bdController.eliminaVentaEntrada(id_ventaentrada);
						bdController.eliminaVentaProducto(id_producto);
						bdController.eliminaTarjeta(tarjetas.get(i).getId_tarjeta());
					}
					
					 bdController.eliminaCliente(id_cliente);
					 resultado = "exito";
				}else{
					resultado = "error";
				}
				response.sendRedirect("adminBajaCliente.jsp?resultado=" + resultado);
							
			}
			else if(tipo.equalsIgnoreCase("baja_ventaProducto")){
				id_ventaproductoS = request.getParameter("id_ventaproducto");
				if(bdController.existeVentaProducto(id_ventaproductoS)==true){
					id_ventaproducto = Integer.parseInt(id_ventaproductoS);
					bdController.eliminaVentaProducto(id_ventaproducto);
					resultado = "exito";
				}else{
					resultado = "error";
				}
							
				response.sendRedirect("adminBajaVentaProducto.jsp?resultado=" + resultado);				
			}
			else if(tipo.equalsIgnoreCase("baja_entrada")){
				id_entradaS = request.getParameter("id_entrada");
				if(bdController.existeEntrada(id_entradaS)==true){
					id_entrada = Integer.parseInt(id_entradaS);
					ArrayList<VentaEntradas> ventasentradas = bdController.dameVentasEntradasPorIDentrada(id_entrada);
					for (int i = 0; i < ventasentradas.size(); i++) {
						bdController.eliminaVentaEntradaConIDentrada(ventasentradas.get(i).getId_entrada());
					}
					bdController.eliminaEntrada(id_entrada);
					resultado = "exito";
				}else{
					resultado = "error";
				}
							
				response.sendRedirect("adminBajaEntrada.jsp?resultado=" + resultado);				
			}			
			else if(tipo.equalsIgnoreCase("baja_producto")){
				id_productoS = request.getParameter("id_producto");
				if(bdController.existeProducto(id_productoS)==true){
					id_producto = Integer.parseInt(id_productoS);
					ArrayList<VentaProductos> ventaproductos = bdController.dameVentaProductosPorIDproducto(id_producto);
					for (int i = 0; i < ventaproductos.size(); i++) {
						bdController.eliminaVentaProductoPorIDproducto(ventaproductos.get(i).getId_producto());
					}
					bdController.eliminaProducto(id_producto);
					resultado = "exito";
				}else{
					resultado = "error";
				}		
			response.sendRedirect("adminBajaProducto.jsp?resultado=" + resultado);				
			}
			else if(tipo.equalsIgnoreCase("baja_tarjeta")){
				id_tarjetaS = request.getParameter("id_tarjeta");
				if(bdController.existeTarjeta(id_tarjetaS)==true){
					id_tarjeta = Integer.parseInt(id_tarjetaS);
					ArrayList<VentaEntradas> ventaEntradas = bdController.dameVentaEntradasPorIDtarjeta(id_tarjeta);
					ArrayList<VentaProductos> ventaProductos = bdController.dameVentaProductosPorIDtarjeta(id_tarjeta);
					for (int i = 0; i < ventaEntradas.size(); i++) {
						bdController.eliminaVentaEntrada(ventaEntradas.get(i).getId_ventaEntrada());					
					}
					for (int i = 0; i < ventaProductos.size(); i++) {
						bdController.eliminaVentaProducto(ventaProductos.get(i).getId_venta());					
					}
					bdController.eliminaTarjeta(id_tarjeta);
					 resultado = "exito";
				}else{
					resultado = "error";
				}
				response.sendRedirect("adminBajaTarjeta.jsp?resultado=" + resultado);			
			}
			else if(tipo.equalsIgnoreCase("baja_tipoEntrada")){
				id_tipoEntradaS = request.getParameter("id_tipoEntrada");
				if(bdController.existeTipoEntrada(id_tipoEntradaS)==true){
					id_tipoEntrada = Integer.parseInt(id_tipoEntradaS);
					ArrayList<Entrada> entradas = bdController.dameEntradasPorIDtipoEntrada(id_tipoEntrada);
					for (int i = 0; i < entradas.size(); i++) {						
						id_ventaentrada = bdController.dameIDVentaEntradaPorIDentrada(entradas.get(i).getId_entrada());
						bdController.eliminaVentaEntrada(id_ventaentrada);	
						bdController.eliminaEntrada(entradas.get(i).getId_entrada());
					}
					bdController.eliminaTipoEntrada(id_tipoEntrada);
					resultado = "exito";
				}else{
					resultado = "error";
				}		
			response.sendRedirect("adminBajaTipoEntrada.jsp?resultado=" + resultado);				
			}
			
			else if(tipo.equalsIgnoreCase("baja_ventaEntrada")){
				id_ventaentradaS = request.getParameter("id_ventaEntrada");
				if(bdController.existeVentaEntrada(id_ventaentradaS)==true){
					id_ventaentrada = Integer.parseInt(id_ventaentradaS);
					bdController.eliminaVentaEntrada(id_ventaentrada);
					resultado = "exito";
				}else{
					resultado = "error";
				}
							
				response.sendRedirect("adminBajaVentaEntrada.jsp?resultado=" + resultado);				
			}
			else if(tipo.equalsIgnoreCase("modificar_cliente")){
				id_clienteS = request.getParameter("id_cliente");
				String nombre = request.getParameter("nombre");
				String apellidos = request.getParameter("apellidos");
				String dni = request.getParameter("dni");
				String direccion = request.getParameter("direccion");
				String cp = request.getParameter("cp");
				String provincia = request.getParameter("provincia");
				String fechaNac = request.getParameter("fechaNac");
				if(nombre.length()==0 || apellidos.length()==0 || dni.length()==0 || direccion.length()==0 || cp.length()==0 || provincia.length()==0 || fechaNac.length()==0){
					resultado = "incompleto";
			 	}
				else{
					if(bdController.existeCliente(id_clienteS)==true){
						id_cliente = Integer.parseInt(id_clienteS);
						bdController.modificarCliente(id_cliente, dni, nombre, apellidos, direccion, cp, provincia, fechaNac);
						 resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminModificarCliente.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("modificar_producto")){
				id_productoS = request.getParameter("id_producto");
				String nombre = request.getParameter("nombre");
				String precio = request.getParameter("precio");
				if(nombre.length()==0 || precio.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeProducto(id_productoS)==true){
						double precioDouble = Double.parseDouble(precio);
						id_producto = Integer.parseInt(id_productoS);
						bdController.modificarProducto(id_producto, nombre, precioDouble);
						resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminModificarProducto.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("modificar_tipoEntrada")){	
				id_tipoEntradaS = request.getParameter("id_tipoEntrada");
				String descripcion = request.getParameter("descripcion");
				String precio = request.getParameter("precio");
				String cantidad = request.getParameter("cantidad");
				if(descripcion.length()==0 || precio.length()==0 || cantidad.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeTipoEntrada(id_tipoEntradaS)==true){
						double precioDouble = Double.parseDouble(precio);
						int cantidadInt = Integer.parseInt(cantidad);
						id_tipoEntrada = Integer.parseInt(id_tipoEntradaS);
						bdController.modificarTipoEntrada(id_tipoEntrada, descripcion, precioDouble, cantidadInt);
						resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminModificarTipoEntrada.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("modificar_entrada")){
				id_entradaS = request.getParameter("id_entrada");
				id_tipoEntradaS = request.getParameter("id_tipoEntrada");
				if(id_tipoEntradaS.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeEntrada(id_entradaS)==true){
						id_entrada = Integer.parseInt(id_entradaS);
						id_tipoEntrada = Integer.parseInt(id_tipoEntradaS);
						bdController.modificarEntrada(id_entrada, id_tipoEntrada);
						 resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminModificarEntrada.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("modificar_tarjeta")){
				id_tarjetaS = request.getParameter("id_tarjeta");
				String saldo = request.getParameter("saldo");
				id_clienteS = request.getParameter("id_cliente");
				if(saldo.length()==0 || id_clienteS.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeTarjeta(id_tarjetaS)==true){
						double saldoDouble = Double.parseDouble(saldo);
						id_cliente = Integer.parseInt(id_clienteS);
						id_tarjeta = Integer.parseInt(id_tarjetaS);
						bdController.modificarTarjeta( id_tarjeta, saldoDouble, id_cliente);
						resultado = "exito";
				
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminModificarTarjeta.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("modificarVentaEntrada")){
				id_ventaentradaS = request.getParameter("id_ventaEntrada");
				id_entradaS = request.getParameter("id_entrada");
				id_tarjetaS = request.getParameter("id_tarjeta");
				if(id_entradaS.length()==0 || id_tarjetaS.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeVentaEntrada(id_ventaentradaS)==true){
							id_entrada = Integer.parseInt(id_entradaS);
							id_tarjeta = Integer.parseInt(id_tarjetaS);
							id_ventaentrada = Integer.parseInt(id_ventaentradaS);
							bdController.modificarVentaEntrada(id_ventaentrada, id_tarjeta, id_entrada);
							resultado = "exito";
	
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminModificarVentaEntrada.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("modificarVentaProducto")){
				id_ventaproductoS = request.getParameter("id_ventaProducto");
				id_productoS = request.getParameter("id_producto");
				id_tarjetaS = request.getParameter("id_tarjeta");
				if(id_productoS.length()==0 || id_tarjetaS.length()==0){
					resultado = "incompleto";
				 }
				else{
					if(bdController.existeVentaProducto(id_ventaproductoS)==true){
							id_producto = Integer.parseInt(id_productoS);
							id_tarjeta = Integer.parseInt(id_tarjetaS);
							id_ventaproducto = Integer.parseInt(id_ventaproductoS);
							bdController.modificarVentaProducto(id_ventaproducto, id_tarjeta, id_producto);
							resultado = "exito";
	
					}else{
						resultado = "error";
					}
				}
				response.sendRedirect("adminModificarVentaProducto.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("comprarEntrada")){
				id_tipoEntradaS = request.getParameter("id_tipoEntrada");
				double precioEntrada = bdController.precioEntrada(id_tipoEntradaS);
				id_tarjetaS = request.getParameter("id_tarjeta");
				//si existe el tipo de entrada
				if(bdController.existeTipoEntrada(id_tipoEntradaS)==true){
					//si existe la tarjeta
					if(bdController.existeTarjeta(id_tarjetaS)==true){
					//si hay entradas disponibles
						if(bdController.entradasDisponibles(id_tipoEntradaS) > 0){
							// si el cliente tiene saldo en la tarjeta
							if(bdController.saldoDisponible(id_tarjetaS) > precioEntrada){
								//restar 1 entrada de ese tipo
								bdController.restarTipoEntrada(id_tipoEntradaS);
								//restar saldo a la tarjeta del cliente
								bdController.restarSaldoTarjeta(id_tarjetaS, precioEntrada);
								
								resultado = "exito";
							}else{
								resultado = "errorSaldo";

							}
						}else{
							resultado = "errorDisponibilidad";
						}
					}else{
						resultado = "errorTarjeta";
					}
				}else{
					resultado = "error";
				}
				response.sendRedirect("entradas.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("comprarProducto")){
				id_productoS = request.getParameter("id_producto");
				double precioProducto = bdController.precioProducto(id_productoS);
				id_tarjetaS = request.getParameter("id_tarjeta");
				//si existe el producto
				if(bdController.existeProducto(id_productoS)==true){
					//si existe la tarjeta
					if(bdController.existeTarjeta(id_tarjetaS)==true){
						// si el cliente tiene saldo en la tarjeta
						if(bdController.saldoDisponible(id_tarjetaS) > precioProducto){
							//restar saldo a la tarjeta del cliente
							bdController.restarSaldoTarjeta(id_tarjetaS, precioProducto);								
							resultado = "exito";
						}else{
							resultado = "errorSaldo";
						}
					}else{
						resultado = "errorTarjeta";
					}
				}else{
					resultado = "error";
				}
				response.sendRedirect("productos.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("descargarListadoClientes")){
				bdController.todosClientesPdf();
				resultado = "exitoListado";
				response.sendRedirect("clientes.jsp?resultado=" + resultado);
			}
			else if(tipo.equalsIgnoreCase("descargarListadoEntradas")){
				bdController.todasEntradasPdf();
				resultado = "exitoListado";
				response.sendRedirect("entradas.jsp?resultado=" + resultado);
			}else if(tipo.equalsIgnoreCase("descargarListadoProductos")){
				bdController.todosProductosPdf();
				resultado = "exitoListado";
				response.sendRedirect("productos.jsp?resultado=" + resultado);
			}else if(tipo.equalsIgnoreCase("descargarListadoTarjetas")){
				bdController.todasTarjetasPdf();
				resultado = "exitoListado";
				response.sendRedirect("tarjetas.jsp?resultado=" + resultado);
			}
		}
		%>		
</body>
</html>