
package FM;
import java.awt.Font;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


public class BDController {
	private Connection conexion;

	public BDController() {
		super();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			this.conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/festival_de_musica", "root", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en la conexi�n del Constructor vac�o del BDController");
		}
	}

	/**
	 * @return the conexion
	 */
	public Connection getConexion() {
		return conexion;
	}

	/**
	 * @param conexion the conexion to set
	 */
	public void setConexion(Connection conexion) {
		this.conexion = conexion;
	}
	public void altaCliente(String dni, String nombre, String apellidos, String direccion, String cp, String provincia, String fecha_nacimiento) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "INSERT INTO clientes (dni, nombre, apellidos, direccion, cp, provincia, fecha_nacimiento) VALUES('" + dni + "','" + nombre + "','" + apellidos + "','" + direccion + "','" + cp + "','" + provincia + "','" + fecha_nacimiento + "')";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta altaCliente BDControler");
		}
	}
	public void altaVentaProducto(int id_tarjeta, int id_producto) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "INSERT INTO ventasproductos (id_tarjeta, id_producto) VALUES('" + id_tarjeta + "','" + id_producto + "')";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta altaVentaProducto BDControler");
		}
	}
	public void altaVentaEntrada(int id_tarjeta, int id_entrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "INSERT INTO ventasentradas (id_tarjeta, id_entrada) VALUES('" + id_tarjeta + "','" + id_entrada + "')";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta altaVentaEntrada BDControler");
		}
	}
	public void altaTarjeta(double saldo, int id_cliente) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "INSERT INTO tarjetas (saldo, id_cliente) VALUES('" + saldo + "','" + id_cliente + "')";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta altaTarjeta BDControler");
		}
	}
	public void altaProducto(String nombre, double precio) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "INSERT INTO productos (nombre, precio) VALUES('" + nombre + "','" + precio + "')";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta altaProducto BDControler");
		}
		
	}
	public void altaEntrada(int id_tipoEntrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "INSERT INTO entradas (id_tipoEntrada) VALUES('" + id_tipoEntrada + "')";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta altaEntrada BDControler");
		}
		
	}
	public void altaTipoEntrada(String descripcion, double precio, int cantidad) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "INSERT INTO tipos_de_entrada (descripcion, precio, cantidad) VALUES('" + descripcion + "','" + precio + "','" + cantidad + "')";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta altaTipoEntrada BDControler");
		}
		
	}
	public void eliminaCliente(int id_cliente) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from clientes where id_cliente = '" + id_cliente +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaCliente en BDController");
		}	
	}
	public void eliminaVentaProducto(int id_venta) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from ventasproductos where id_ventaProducto = '" + id_venta +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaVentaProducto en BDController");
		}	
	}
	public void eliminaVentaProductoPorIDproducto(int id_producto) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from ventasproductos where id_producto = '" + id_producto +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaVentaProductoPorIDproductos en BDController");
		}	
	}
	public void eliminaVentaProductoPorTarjetaYProducto(int id_tarjeta, int id_producto) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from ventasproductos where id_tarjeta = '" + id_tarjeta + "' AND id_producto = '" + id_producto +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaVentaProductoPorTarjetaYProducto en BDController");
		}	
	}
	public void eliminaVentaEntrada(int id_venta) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from ventasentradas where id_ventaEntrada = '" + id_venta +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaVentaEntrada en BDController");
		}	
	}
	public void eliminaVentaEntradaConIDentrada(int id_entrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from ventasentradas where id_entrada = '" + id_entrada +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaVentaEntradaConIDentrada en BDController");
		}	
	}
	public void eliminaTarjeta(int id_tarjeta) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from tarjetas where id_tarjeta = '" + id_tarjeta +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaTarjeta en BDController");
		}	
	}
	public void eliminaProducto(int id_producto) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from productos where id_producto = '" + id_producto +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaProducto en BDController");
		}	
	}
	public void eliminaEntrada(int id_entrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from entradas where id_entrada = '" + id_entrada +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaEntrada en BDController");
		}	
	}
	public void eliminaEntradaPorIDtipoEntrada(int id_tipoEntrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from entradas where id_tipoEntrada = '" + id_tipoEntrada + "'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaEntradaPorIDtipoEntrada en BDController");
		}	
	}
	
	public void eliminaTipoEntrada(int id_tipoEntrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Delete from tipos_de_entrada where id_tipoEntrada = '" + id_tipoEntrada +"'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta eliminaTipoEntrada en BDController");
		}	
	}
	public void modificarCliente(int id_cliente, String dni, String nombre, String apellidos, String direccion, String cp, String provincia, String fecha_nacimiento) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE clientes SET dni= '" + dni + "', nombre= '" + nombre + "', apellidos= '" + apellidos + "', direccion= '" + direccion + "', cp= '" + cp + "', provincia= '" + provincia + "', fecha_nacimiento= '" + fecha_nacimiento + "' where id_cliente like '" + id_cliente + "' ";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta modificarCliente BDControler");
		}
	}
	public void modificarVentaProducto(int id_ventaProducto, int id_tarjeta, int id_producto) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE ventasproductos SET id_tarjeta= '" + id_tarjeta + "', id_producto= '" + id_producto + "' where id_ventaProducto like '" + id_ventaProducto + "' ";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta modificarVentaProducto BDControler");
		}
	}
	public void modificarVentaEntrada(int id_ventaEntrada, int id_tarjeta, int id_entrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE ventasentradas SET id_tarjeta= '" + id_tarjeta + "', id_entrada= '" + id_entrada + "' where id_ventaEntrada like '" + id_ventaEntrada + "' ";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta modificarVentaEntrada BDControler");
		}
	}
	public void modificarTarjeta(int id_tarjeta, double saldo, int id_cliente) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE tarjetas SET saldo= '" + saldo + "', id_cliente= '" + id_cliente + "' where id_tarjeta like '" + id_tarjeta + "' ";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta modificarTarjeta BDControler");
		}
	}
	public void modificarProducto(int id_producto, String nombre, double precio) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE productos SET nombre= '" + nombre + "', precio= '" + precio + "' where id_producto like '" + id_producto + "' ";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta modificarProducto BDControler");
		}
	}
	public void modificarEntrada(int id_entrada, int id_tipoEntrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE entradas SET id_tipoEntrada= '" + id_tipoEntrada + "' where id_entrada like '" + id_entrada + "' ";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta modificarEntrada BDControler");
		}
	}
	public void modificarTipoEntrada(int id_tipoEntrada, String descripcion, double precio, int cantidad) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE tipos_de_entrada SET descripcion= '" + descripcion + "', precio= '" + precio + "', cantidad= '" + cantidad + "' where id_tipoEntrada like '" + id_tipoEntrada + "' ";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta modificarTipoEntrada BDControler");
		}
	}
	public boolean existeCliente(String id) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from clientes where id_cliente like '" + id + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeCliente BDControler");
		}
		return encontrado;
	}
	public boolean existeDniCliente(String dni) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from clientes where dni like '" + dni + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeDniCliente BDControler");
		}
		return encontrado;
	}
	public boolean existeVentaProducto(String id) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from ventasproductos where id_ventaProducto like '" + id + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeVentaProducto BDControler");
		}
		return encontrado;
	}
	public boolean existeVentaEntrada(String id) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from ventasentradas where id_ventaEntrada like '" + id + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeVentaEntrada BDControler");
		}
		return encontrado;
	}
	public boolean existeTarjeta(String id) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from tarjetas where id_tarjeta like '" + id + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeTarjeta BDControler");
		}
		return encontrado;
	}
	public boolean existeProducto(String id) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from productos where id_producto like '" + id + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeProducto BDControler");
		}
		return encontrado;
	}
	public boolean existeNombreProducto(String nombre) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from productos where nombre like '" + nombre + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeNombreProducto BDControler");
		}
		return encontrado;
	}
	public boolean existeEntrada(String id) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from entradas where id_entrada like '" + id + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeEntrada BDControler");
		}
		return encontrado;
	}
	public boolean existeTipoEntrada(String id) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from tipos_de_entrada where id_tipoEntrada like '" + id + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeTipoEntrada BDControler");
		}
		return encontrado;
	}
	public boolean existeDescripcionEntrada(String descripcion) {
		boolean encontrado = false;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement
					.executeQuery("Select * from tipos_de_entrada where descripcion like '" + descripcion + "'");
			if (rs.next() == true) {
				encontrado = true;
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta existeDescripcionEntrada BDControler");
		}
		return encontrado;
	}
	public Cliente dameCliente(int cod) {
		Cliente cliente = new Cliente();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from clientes where id_cliente like '" + cod + "'");
			if (rs.next() == true) {
				cliente = new Cliente(rs.getInt("id_cliente"), rs.getString("dni"), rs.getString("nombre"), rs.getString("apellidos"), rs.getString("direccion"), rs.getString("cp"), rs.getString("provincia"), rs.getString("fecha_nacimiento"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameCliente BDControler");
		}
		return cliente;
		
	}
	public Entrada dameEntrada(int cod) {
		Entrada entrada = new Entrada();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from entradas where id_entrada like '" + cod + "'");
			if (rs.next() == true) {
				entrada = new Entrada(rs.getInt("id_entrada"), rs.getInt("id_tipoEntrada"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameEntrada BDControler");
		}
		return entrada;
	}
	public TipoEntrada dameTipoEntrada(int cod) {
		TipoEntrada tipoEntrada = new TipoEntrada();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tipos_de_entrada where id_tipoEntrada like '" + cod + "'");
			if (rs.next() == true) {
				tipoEntrada = new TipoEntrada(rs.getInt("id_tipoEntrada"), rs.getString("descripcion"), rs.getDouble("precio"), rs.getInt("cantidad"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameTipoEntrada BDControler");
		}
		return tipoEntrada;
	}
	public TipoEntrada dameTipoEntradaPorIDentrada(int id_entrada) {
		TipoEntrada tipoEntrada = new TipoEntrada();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT tipos_de_entrada.* FROM tipos_de_entrada WHERE tipos_de_entrada.id_tipoEntrada IN(SELECT entradas.id_tipoEntrada FROM entradas WHERE entradas.id_entrada = '" + id_entrada + "')");
			if (rs.next() == true) {
				tipoEntrada = new TipoEntrada(rs.getInt("id_tipoEntrada"), rs.getString("descripcion"), rs.getDouble("precio"), rs.getInt("cantidad"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameTipoEntradaPorIDentrada BDControler");
		}
		return tipoEntrada;
	}
	public Producto dameproducto(int cod) {
		Producto producto = new Producto();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from productos where id_producto like '" + cod + "'");
			if (rs.next() == true) {
				producto = new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getDouble("precio"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameproducto BDControler");
		}
		return producto;
	}
	public Tarjeta dameTarjeta(int cod) {
		Tarjeta tarjeta = new Tarjeta();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tarjetas where id_tarjeta like '" + cod + "'");
			if (rs.next() == true) {
				tarjeta = new Tarjeta(rs.getInt("id_tarjeta"), rs.getDouble("saldo"), rs.getInt("id_cliente"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameTarjeta BDControler");
		}
		return tarjeta;
	}
	public Tarjeta dameTarjetaPorIdCliente(int cod) {
		Tarjeta tarjeta = new Tarjeta();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tarjetas where id_tarjeta like '" + cod + "'");
			if (rs.next() == true) {
				tarjeta = new Tarjeta(rs.getInt("id_tarjeta"), rs.getDouble("saldo"), rs.getInt("id_cliente"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameTarjetaPorIdClientea BDControler");
		}
		return tarjeta;
	}
	public VentaEntradas dameVentaEntrada(int cod) {
		VentaEntradas ventaEntrada = new VentaEntradas();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasentradas where id_ventaEntrada like '" + cod + "'");
			if (rs.next() == true) {
				ventaEntrada = new VentaEntradas(rs.getInt("id_ventaEntrada"), rs.getInt("id_tarjeta"), rs.getInt("id_entrada"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameVentaEntrada BDControler");
		}
		return ventaEntrada;
	}
	public VentaProductos dameVentaProducto(int cod) {
		VentaProductos ventaProducto = new VentaProductos();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasproductos where id_ventaProducto like '" + cod + "'");
			if (rs.next() == true) {
				ventaProducto = new VentaProductos(rs.getInt("id_ventaProducto"), rs.getInt("id_tarjeta"), rs.getInt("id_producto"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameVentaProducto BDControler");
		}
		return ventaProducto;
	}
	public ArrayList<Cliente> todosClientes(){
		ArrayList<Cliente> clientes = new ArrayList<Cliente>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from clientes");
			while (rs.next()==true) {
				clientes.add(new Cliente(rs.getInt("id_cliente"), rs.getString("dni"), rs.getString("nombre"), rs.getString("apellidos"), rs.getString("direccion"), rs.getString("cp"), rs.getString("provincia"), rs.getString("fecha_nacimiento")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todosClientes");
		}
		return clientes;
}
	public ArrayList<Entrada> todasEntradas(){
		ArrayList<Entrada> entradas = new ArrayList<Entrada>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from entradas");
			while (rs.next()==true) {
				entradas.add(new Entrada(rs.getInt("id_entrada"), rs.getInt("id_tipoEntrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todasEntradas");
		}
		return entradas;
}
	public ArrayList<Producto> todosProductos(){
		ArrayList<Producto> productos = new ArrayList<Producto>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from productos");
			while (rs.next()==true) {
				productos.add(new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getDouble("precio")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todosProductos");
		}
		return productos;
}
	
	public void todosProductosPdf() throws FileNotFoundException, DocumentException {
	List<Producto> productos = new ArrayList<Producto>();
	try {
		Statement miStatement = this.conexion.createStatement();
		ResultSet rs = miStatement.executeQuery("Select * from productos");
		while (rs.next()==true) {
			productos.add(new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getDouble("precio")));
		}			
		miStatement.close();
		rs.close();
			Document documento = new Document();
	FileOutputStream ficheroPdf = new FileOutputStream("F:/Productos.pdf");
	PdfWriter.getInstance(documento, ficheroPdf);
	documento.open();
	 // Parrafo
    Paragraph titulo = new Paragraph("Listado de productos \n\n",
            FontFactory.getFont("arial",
                    22,
                    Font.BOLD,
                    BaseColor.BLUE
                    )
    );
    
    // Añadimos el titulo al documento
    documento.add(titulo);
	PdfPTable tabla = new PdfPTable(3);
	tabla.addCell("ID");
	tabla.addCell("Nombre");
	tabla.addCell("Precio");
	for (int i = 0; i <productos.size(); i++) {
		tabla.addCell(String.valueOf(productos.get(i).getId_producto()));
		tabla.addCell(productos.get(i).getNombre());
		tabla.addCell(String.valueOf(productos.get(i).getPrecio()));
	}
	documento.add(tabla);
	documento.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println("Error en BDcontroler metodo todosProductosPdf");
	}
	
}
	public void todosClientesPdf() throws FileNotFoundException, DocumentException {
		List<Cliente> clientes = new ArrayList<Cliente>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from clientes");
			while (rs.next()==true) {
				clientes.add(new Cliente(rs.getInt("id_cliente"), rs.getString("dni"), rs.getString("nombre"), rs.getString("apellidos"), rs.getString("direccion"), rs.getString("cp"), rs.getString("provincia"), rs.getString("fecha_nacimiento")));
			}			
			miStatement.close();
			rs.close();
			Document documento = new Document(PageSize.A4.rotate());
			FileOutputStream ficheroPdf = new FileOutputStream("C:/Listados/Clientes.pdf");
			PdfWriter.getInstance(documento, ficheroPdf);
			documento.open();
			Paragraph titulo = new Paragraph("Listado de clientes \n\n",
	            FontFactory.getFont("arial",
	                    22,
	                    Font.BOLD,
	                    BaseColor.BLUE
	                    )
					);
			documento.add(titulo);
			PdfPTable tabla = new PdfPTable(8);
			tabla.addCell("ID");
			tabla.addCell("DNI");
			tabla.addCell("Nombre");
			tabla.addCell("Apellidos");
			tabla.addCell("Direcci�n");
			tabla.addCell("CP");
			tabla.addCell("Provincia");
			tabla.addCell("Fecha de nacimiento");
			for (int i = 0; i <clientes.size(); i++) {
			tabla.addCell(String.valueOf(clientes.get(i).getId_cliente()));
			tabla.addCell(clientes.get(i).getDni());
			tabla.addCell(clientes.get(i).getNombre());
			tabla.addCell(clientes.get(i).getApellidos());
			tabla.addCell(clientes.get(i).getDireccion());
			tabla.addCell(clientes.get(i).getCp());
			tabla.addCell(clientes.get(i).getProvincia());
			tabla.addCell(clientes.get(i).getFecha_nacimiento());
			
		}
		documento.add(tabla);
		documento.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todosClientesPdf");
		}
		
	}

	public void todasEntradasPdf() throws FileNotFoundException, DocumentException {
	List<TipoEntrada> tiposEntradas = new ArrayList<TipoEntrada>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tipos_de_entrada");
			while (rs.next()==true) {
				tiposEntradas.add(new TipoEntrada(rs.getInt("id_tipoEntrada"), rs.getString("descripcion"), rs.getDouble("precio"), rs.getInt("cantidad")));
			}			
			miStatement.close();
			rs.close();
			Document documento = new Document();
			FileOutputStream ficheroPdf = new FileOutputStream("F:/Entradas.pdf");
			PdfWriter.getInstance(documento, ficheroPdf);
			documento.open();
			Paragraph titulo = new Paragraph("Listado de tipos de entradas \n\n",
	            FontFactory.getFont("arial",
	                    22,
	                    Font.BOLD,
	                    BaseColor.BLUE
	                    )
					);
			documento.add(titulo);
			PdfPTable tabla = new PdfPTable(4);
			tabla.addCell("ID");
			tabla.addCell("Descripci�n");
			tabla.addCell("Precio");
			tabla.addCell("Cantidad");
			for (int i = 0; i <tiposEntradas.size(); i++) {
			tabla.addCell(String.valueOf(tiposEntradas.get(i).getId_tipoEntrada()));
			tabla.addCell(tiposEntradas.get(i).getDescripcion());
			tabla.addCell(String.valueOf(tiposEntradas.get(i).getPrecio()));
			tabla.addCell(String.valueOf(tiposEntradas.get(i).getCantidad()));
			
		}
		documento.add(tabla);
		documento.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todasEntradasPdf");
		}
		
	}
	public void todasTarjetasPdf() throws FileNotFoundException, DocumentException {
		List<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
			try {
				Statement miStatement = this.conexion.createStatement();
				ResultSet rs = miStatement.executeQuery("Select * from tarjetas");
				while (rs.next()==true) {
					tarjetas.add(new Tarjeta(rs.getInt("id_tarjeta"), rs.getDouble("saldo"), rs.getInt("id_cliente")));
				}			
				miStatement.close();
				rs.close();
				Document documento = new Document();
				FileOutputStream ficheroPdf = new FileOutputStream("F:/Tarjetas.pdf");
				PdfWriter.getInstance(documento, ficheroPdf);
				documento.open();
				Paragraph titulo = new Paragraph("Listado de tarjetas \n\n",
		            FontFactory.getFont("arial",
		                    22,
		                    Font.BOLD,
		                    BaseColor.BLUE
		                    )
						);
				documento.add(titulo);
				PdfPTable tabla = new PdfPTable(3);
				tabla.addCell("ID");
				tabla.addCell("Saldo");
				tabla.addCell("ID cliente");
				for (int i = 0; i <tarjetas.size(); i++) {
				tabla.addCell(String.valueOf(tarjetas.get(i).getId_tarjeta()));
				tabla.addCell(String.valueOf(tarjetas.get(i).getSaldo()));
				tabla.addCell(String.valueOf(tarjetas.get(i).getId_cliente()));
				
				
			}
			documento.add(tabla);
			documento.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("Error en BDcontroler metodo todasTrajetasPdf");
			}
			
		}

	public ArrayList<Tarjeta> todasTarjetas(){
		ArrayList<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tarjetas");
			while (rs.next()==true) {
				tarjetas.add(new Tarjeta(rs.getInt("id_tarjeta"), rs.getDouble("saldo"), rs.getInt("id_cliente")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todasTarjetas");
		}
		return tarjetas;
}
	public ArrayList<TipoEntrada> todosTiposEntrada(){
		ArrayList<TipoEntrada> tiposEntradas = new ArrayList<TipoEntrada>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tipos_de_entrada");
			while (rs.next()==true) {
				tiposEntradas.add(new TipoEntrada(rs.getInt("id_tipoEntrada"), rs.getString("descripcion"), rs.getDouble("precio"), rs.getInt("cantidad")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todosTiposEntrada");
		}
		return tiposEntradas;
}
	public ArrayList<VentaEntradas> todasVentasEntradas(){
		ArrayList<VentaEntradas> ventaEntradas = new ArrayList<VentaEntradas>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasentradas");
			while (rs.next()==true) {
				ventaEntradas.add(new VentaEntradas(rs.getInt("id_ventaEntrada"), rs.getInt("id_tarjeta"), rs.getInt("id_entrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todasVentasEntradas");
		}
		return ventaEntradas;
}
	public ArrayList<VentaProductos> todasVentasProductos(){
		ArrayList<VentaProductos> VentaProductos = new ArrayList<VentaProductos>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasproductos");
			while (rs.next()==true) {
				VentaProductos.add(new VentaProductos(rs.getInt("id_ventaProducto"), rs.getInt("id_tarjeta"), rs.getInt("id_producto")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo todasVentasProductos");
		}
		return VentaProductos;
	}
	public int dameIDclientePorDni(String dni) {
		int codigo = 0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select id_cliente from clientes where dni like '" + dni + "'");
			if (rs.next() == true) {
				codigo = rs.getInt("id_cliente");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameIDclientePorDni BDControler");
		}
		return codigo;
	}
	public int dameIDproductoPorNombre(String nombre) {
		int codigo = 0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select id_producto from productos where nombre like '" + nombre + "'");
			if (rs.next() == true) {
				codigo = rs.getInt("id_producto");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameIDproductoPorNombre BDControler");
		}
		return codigo;
	}
	public ArrayList<Tarjeta> dameIDtarjetaPorIDcliente(int idcliente) {
		ArrayList<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tarjetas where id_cliente like '" + idcliente + "'");
			while (rs.next()==true) {
				tarjetas.add(new Tarjeta(rs.getInt("id_tarjeta"), rs.getDouble("saldo"), rs.getInt("id_cliente")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameIDtarjetaPorIDclient");
		}
		return tarjetas;
	}

	public int dameIDVentaProductoPorIDtarjeta(int idtarjeta) {
		int codigo = 0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select id_ventaProducto from ventasproductos where id_tarjeta like '" + idtarjeta + "'");
			if (rs.next() == true) {
				codigo = rs.getInt("id_ventaProducto");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameIDVentaProductoPorIDtarjeta BDControler");
		}
		return codigo;
	}
	public int dameIDVentaEntradaPorIDtarjeta(int idtarjeta) {
		int codigo = 0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select id_ventaEntrada from ventasentradas where id_tarjeta like '" + idtarjeta + "'");
			if (rs.next() == true) {
				codigo = rs.getInt("id_ventaEntrada");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameIDVentaEntradaPorIDtarjeta BDControler");
		}
		return codigo;
	}
	public int dameIDVentaEntradaPorIDentrada(int identrada) {
		int codigo = 0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select id_ventaEntrada from ventasentradas where id_entrada like '" + identrada + "'");
			if (rs.next() == true) {
				codigo = rs.getInt("id_ventaEntrada");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameIDVentaEntradaPorIDentrada BDControler");
		}
		return codigo;
	}
	public int dameIDEntrada(int identrada) {
		int codigo = 0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select id_entrada from ventasentradas where id_entrada like '" + identrada + "'");
			if (rs.next() == true) {
				codigo = rs.getInt("id_entrada");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameIDEntrada BDControler");
		}
		return codigo;
	}
	public ArrayList<Entrada> dameEntradasPorIDentrada(int identrada) {
		ArrayList<Entrada> entradas = new ArrayList<Entrada>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from entradas where id_entrada like '" + identrada + "'");
			while (rs.next()==true) {
				entradas.add(new Entrada(rs.getInt("id_entrada"), rs.getInt("id_tipoEntrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameEntradasPorIDentrada");
		}
		return entradas;
	}
	public ArrayList<Entrada> dameEntradasPorIDtipoEntrada(int idTipoEntrada) {
		ArrayList<Entrada> entradas = new ArrayList<Entrada>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from entradas where id_tipoEntrada like '" + idTipoEntrada + "'");
			while (rs.next()==true) {
				entradas.add(new Entrada(rs.getInt("id_entrada"), rs.getInt("id_tipoEntrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameEntradasPorIDtipoEntrada");
		}
		return entradas;
	}
	public ArrayList<Producto> dameProductosPorIDproducto(int idproducto) {
		ArrayList<Producto> productos = new ArrayList<Producto>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from productos where id_producto like '" + idproducto + "'");
			while (rs.next()==true) {
				productos.add(new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getDouble("precio")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameProductosPorIDproducto");
		}
		return productos;
	}
	public ArrayList<VentaEntradas> dameVentaEntradasPorIDtarjeta(int id_tarjeta){
		ArrayList<VentaEntradas> ventaEntradas = new ArrayList<VentaEntradas>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasentradas where id_tarjeta like '" + id_tarjeta + "'");
			while (rs.next()==true) {
				ventaEntradas.add(new VentaEntradas(rs.getInt("id_ventaEntrada"), rs.getInt("id_tarjeta"), rs.getInt("id_entrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameVentaEntradasPorIDtarjeta");
		}
		return ventaEntradas;
	}
	public ArrayList<VentaProductos> dameVentaProductosPorIDtarjeta(int id_tarjeta){
		ArrayList<VentaProductos> VentaProductos = new ArrayList<VentaProductos>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasproductos where id_tarjeta like '" + id_tarjeta + "'");
			while (rs.next()==true) {
				VentaProductos.add(new VentaProductos(rs.getInt("id_ventaProducto"), rs.getInt("id_tarjeta"), rs.getInt("id_producto")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameVentaProductosPorIDtarjeta");
		}
		return VentaProductos;
	}
	public ArrayList<TipoEntrada> dameTiposEntradasPorIDtipoEntrada(int id_tipoEntrada){
		ArrayList<TipoEntrada> tiposEntradas = new ArrayList<TipoEntrada>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tipos_de_entrada where id_tipoEntrada like '" + id_tipoEntrada + "'");
			while (rs.next()==true) {
				tiposEntradas.add(new TipoEntrada(rs.getInt("id_tipoEntrada"), rs.getString("descripcion"), rs.getDouble("precio"), rs.getInt("cantidad")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameTiposEntradasPorIDtipoEntrada");
		}
		return tiposEntradas;
}
	public ArrayList<VentaProductos> dameVentaProductosPorIDproducto(int id_producto){
		ArrayList<VentaProductos> VentaProductos = new ArrayList<VentaProductos>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasproductos where id_producto like '" + id_producto + "'");
			while (rs.next()==true) {
				VentaProductos.add(new VentaProductos(rs.getInt("id_ventaProducto"), rs.getInt("id_tarjeta"), rs.getInt("id_producto")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameVentaProductosPorIDproducto");
		}
		return VentaProductos;
	}
	public ArrayList<VentaEntradas> dameVentasEntradasPorIDentrada(int id_entrada){
		ArrayList<VentaEntradas> ventaEntradas = new ArrayList<VentaEntradas>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasentradas where id_entrada like '" + id_entrada + "')");
			while (rs.next()==true) {
				ventaEntradas.add(new VentaEntradas(rs.getInt("id_ventaEntrada"), rs.getInt("id_tarjeta"), rs.getInt("id_entrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameVentasEntradasPorIDentrada");
		}
		return ventaEntradas;
	}
	public String dameDescripcionTipoEntradaPorIDentrada(int id_entrada){
		String descripcion = "";
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT tipos_de_entrada.descripcion from tipos_de_entrada WHERE tipos_de_entrada.id_tipoEntrada IN(SELECT entradas.id_tipoEntrada FROM entradas WHERE entradas.id_entrada = '" + id_entrada + "')");
			if (rs.next() == true) {
				descripcion = rs.getString("descripcion");
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameDescripcionTipoEntradaPorIDentrada");
		}
		return descripcion;
	}	
	public Cliente dameClientePorIDtarjeta(int id_tarjeta) {
	Cliente cliente = new Cliente();
	try {
		Statement miStatement = this.conexion.createStatement();
		ResultSet rs = miStatement.executeQuery("SELECT clientes.* FROM clientes WHERE clientes.id_cliente IN(SELECT tarjetas.id_cliente FROM tarjetas WHERE tarjetas.id_cliente = '" + id_tarjeta + "')");
		if (rs.next() == true) {
			cliente = new Cliente(rs.getInt("id_cliente"), rs.getString("dni"), rs.getString("nombre"), rs.getString("apellidos"), rs.getString("direccion"), rs.getString("cp"), rs.getString("provincia"), rs.getString("fecha_nacimiento"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println("Error en en consulta dameClientePorIDtarjeta BDControler");
	}
	return cliente;
	}
	public Tarjeta dameTarjetaPorIDventaEntrada(int id_ventaEntrada) {
		Tarjeta tarjeta = new Tarjeta();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT tarjetas.* FROM tarjetas WHERE tarjetas.id_tarjeta IN(SELECT ventasentradas.id_tarjeta FROM ventasentradas WHERE ventasentradas.id_ventaEntrada = '" + id_ventaEntrada + "')");
			if (rs.next() == true) {
				tarjeta = new Tarjeta(rs.getInt("id_tarjeta"), rs.getDouble("saldo"), rs.getInt("id_cliente"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameTarjetaPorIDventaEntrada BDControler");
		}
		return tarjeta;
	}
	public Entrada dameEntradaPorIDventaEntrada(int id_ventaEntrada) {
		Entrada entrada = new Entrada();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT entradas.* FROM entradas WHERE entradas.id_entrada IN(SELECT ventasentradas.id_entrada FROM ventasentradas WHERE ventasentradas.id_ventaEntrada = '" + id_ventaEntrada + "')");
			if (rs.next() == true) {
				entrada = new Entrada(rs.getInt("id_entrada"), rs.getInt("id_tipoEntrada"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameEntradaPorIDventaEntrada BDControler");
		}
		return entrada;
	}
	public Tarjeta dameTarjetaPorIDventaProducto(int id_ventaProducto) {
		Tarjeta tarjeta = new Tarjeta();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT tarjetas.* FROM tarjetas WHERE tarjetas.id_tarjeta IN(SELECT ventasproductos.id_tarjeta FROM ventasproductos WHERE ventasproductos.id_ventaproducto = '" + id_ventaProducto + "')");
			if (rs.next() == true) {
				tarjeta = new Tarjeta(rs.getInt("id_tarjeta"), rs.getDouble("saldo"), rs.getInt("id_cliente"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameTarjetaPorIDventaProducto BDControler");
		}
		return tarjeta;
	}
	
	public Producto dameProductoPorIDventaProducto(int id_ventaProducto) {
		Producto producto = new Producto();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("SELECT productos.* FROM productos WHERE productos.id_producto IN(SELECT ventasproductos.id_producto FROM ventasproductos WHERE ventasproductos.id_ventaproducto = '" + id_ventaProducto + "')");
			if (rs.next() == true) {
				producto = new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getDouble("precio"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameProductoPorIDventaProducto BDControler");
		}
		return producto;
	}
	public int idMaxCliente() {
		int id=0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select max(id_cliente) from clientes;");
			if (rs.next()==true) {
				id = rs.getInt("max(id_cliente)");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta idMaxCliente BDControler");
		}
		return id;
	}
	public int idMinProducto() {
		int id=0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select min(id_producto) from productos;");
			if (rs.next()==true) {
				id = rs.getInt("min(id_producto)");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta idMinProducto BDControler");
		}
		return id;
	}
	public int entradasDisponibles(String id_tipoEntrada) {
		int num=0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select cantidad from tipos_de_entrada where id_tipoEntrada = '" + id_tipoEntrada + "'");
			if (rs.next()==true) {
				num = rs.getInt("cantidad");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta entradasDisponibles BDControler");
		}
		return num;
	}
	public int saldoDisponible(String id_tarjeta) {
		int num=0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select saldo from tarjetas where id_tarjeta = '" + id_tarjeta + "'");
			if (rs.next()==true) {
				num = rs.getInt("saldo");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta saldoDisponible BDControler");
		}
		return num;
	}
	public double precioEntrada(String id_tipoEntrada) {
		double precio=0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select precio from tipos_de_entrada where id_tipoEntrada = '" + id_tipoEntrada + "'");
			if (rs.next()==true) {
				precio = rs.getDouble("precio");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta precioEntrada BDControler");
		}
		return precio;
	}
	public double precioProducto(String id_producto) {
		double precio=0;
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("select precio from productos where id_producto = '" + id_producto + "'");
			if (rs.next()==true) {
				precio = rs.getDouble("precio");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta  precioProducto BDControler");
		}
		return precio;
	}

	public void restarTipoEntrada(String id_tipoEntrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE tipos_de_entrada SET cantidad = (cantidad - 1) where id_tipoEntrada = '" + id_tipoEntrada + "'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta restarTipoEntrada BDControler");
		}
	}
	
	public void restarSaldoTarjeta(String id_tarjeta, double precioTipoEntrada) {
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "UPDATE tarjetas SET saldo = (saldo - '" + precioTipoEntrada + "') where id_tarjeta = '" + id_tarjeta + "'";
			miStatement.executeUpdate(cadena);
			miStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en consulta restarSaldoTarjeta BDControler");
		}
	}
	public ArrayList<Tarjeta> dameTarjetasPorIdCliente(int id_cliente){
		ArrayList<Tarjeta> tarjetas = new ArrayList<Tarjeta>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from tarjetas where id_cliente = '" + id_cliente + "'");
			while (rs.next()==true) {
				tarjetas.add(new Tarjeta(rs.getInt("id_tarjeta"), rs.getDouble("saldo"), rs.getInt("id_cliente")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameTarjetasPorIdCliente");
		}
		return tarjetas;
}
	public ArrayList<TipoEntrada> dameEntradasPorIdCliente(int id_cliente){
		ArrayList<TipoEntrada> tiposEntradas = new ArrayList<TipoEntrada>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select tipos_de_entrada.* from tipos_de_entrada, entradas, ventasentradas, tarjetas where tipos_de_entrada.id_tipoEntrada = entradas.id_tipoEntrada and entradas.id_entrada = ventasentradas.id_entrada and ventasentradas.id_tarjeta = tarjetas.id_tarjeta and tarjetas.id_cliente = '" + id_cliente + "'");
			while (rs.next()==true) {
				tiposEntradas.add(new TipoEntrada(rs.getInt("id_tipoEntrada"), rs.getString("descripcion"), rs.getDouble("precio"), rs.getInt("cantidad")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameEntradasPorIdCliente");
		}
		return tiposEntradas;
}
	public ArrayList<Producto> dameProductosPorIdCliente(int id_cliente){
		ArrayList<Producto> productos = new ArrayList<Producto>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select productos.* from productos, ventasproductos, tarjetas where productos.id_producto = ventasproductos.id_producto and ventasproductos.id_tarjeta = tarjetas.id_tarjeta and tarjetas.id_cliente = '" + id_cliente + "'");
			while (rs.next()==true) {
				productos.add(new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getDouble("precio")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameProductosPorIdCliente");
		}
		return productos;
}
	public ArrayList<VentaProductos> dameVentasProductosPorIdCliente(int id_cliente){
		ArrayList<VentaProductos> VentaProductos = new ArrayList<VentaProductos>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select ventasproductos.* from ventasproductos, tarjetas where ventasproductos.id_tarjeta = tarjetas.id_tarjeta and tarjetas.id_cliente = '" + id_cliente + "'");
			while (rs.next()==true) {
				VentaProductos.add(new VentaProductos(rs.getInt("id_ventaProducto"), rs.getInt("id_tarjeta"), rs.getInt("id_producto")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameVentasProductosPorIdCliente");
		}
		return VentaProductos;
	}
	public ArrayList<Entrada> dameEntradasPorIDcliente(int id_cliente){
		ArrayList<Entrada> entradas = new ArrayList<Entrada>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select entradas.* from entradas, ventasentradas, tarjetas where entradas.id_entrada = ventasentradas.id_entrada and ventasentradas.id_tarjeta = tarjetas.id_tarjeta and tarjetas.id_cliente = '" + id_cliente + "'");
			while (rs.next()==true) {
				entradas.add(new Entrada(rs.getInt("id_entrada"), rs.getInt("id_tipoEntrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameEntradasPorIDcliente");
		}
		return entradas;
}
	public ArrayList<VentaEntradas> dameVentasEntradasPorIdCliente(int id_cliente){
		ArrayList<VentaEntradas> ventaEntradas = new ArrayList<VentaEntradas>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select ventasentradas.* from ventasentradas, tarjetas where ventasentradas.id_tarjeta = tarjetas.id_tarjeta and tarjetas.id_cliente = '" + id_cliente + "'");
			while (rs.next()==true) {
				ventaEntradas.add(new VentaEntradas(rs.getInt("id_ventaEntrada"), rs.getInt("id_tarjeta"), rs.getInt("id_entrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en BDcontroler metodo dameVentasEntradasPorIdCliente");
		}
		return ventaEntradas;
	}

	public VentaProductos dameVentaProductoPorIdProducto(int cod) {
		VentaProductos ventaProducto = new VentaProductos();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasproductos where id_producto like '" + cod + "'");
			if (rs.next() == true) {
				ventaProducto = new VentaProductos(rs.getInt("id_ventaProducto"), rs.getInt("id_tarjeta"), rs.getInt("id_producto"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameVentaProductoPorIdProducto BDControler");
		}
		return ventaProducto;
	}
	public VentaEntradas dameVentaEntradaPorIdEntrada(int cod) {
		VentaEntradas ventaEntrada = new VentaEntradas();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from ventasentradas where id_entrada like '" + cod + "'");
			if (rs.next() == true) {
				ventaEntrada = new VentaEntradas(rs.getInt("id_ventaEntrada"), rs.getInt("id_tarjeta"), rs.getInt("id_entrada"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameVentaEntradaPorIdEntrada BDControler");
		}
		return ventaEntrada;
	}
	public Hashtable<Integer, Producto> dameproductoHash() {
		Hashtable<Integer, Producto> contenedor=new Hashtable<Integer, Producto>();
		try {
			Statement miStatement = this.conexion.createStatement();
			ResultSet rs = miStatement.executeQuery("Select * from productos");
			while (rs.next() == true) {
				Producto currentProducto = new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getDouble("precio"));
				contenedor.put(rs.getInt("id_producto"), currentProducto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error en en consulta dameproducto BDControler");
		}
		return contenedor;
	}
	
}
