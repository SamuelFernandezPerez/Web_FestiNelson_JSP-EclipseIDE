package FM;

public class TipoEntrada {
private int id_tipoEntrada;
private String descripcion;
private double precio;
private int cantidad;
/**
 * 
 */
public TipoEntrada() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @param id_tipoEntrada
 * @param descripcion
 * @param precio
 * @param cantidad
 */
public TipoEntrada(int id_tipoEntrada, String descripcion, double precio, int cantidad) {
	super();
	this.id_tipoEntrada = id_tipoEntrada;
	this.descripcion = descripcion;
	this.precio = precio;
	this.cantidad = cantidad;
}
/**
 * @return the id_tipoEntrada
 */
public int getId_tipoEntrada() {
	return id_tipoEntrada;
}
/**
 * @param id_tipoEntrada the id_tipoEntrada to set
 */
public void setId_tipoEntrada(int id_tipoEntrada) {
	this.id_tipoEntrada = id_tipoEntrada;
}
/**
 * @return the descripcion
 */
public String getDescripcion() {
	return descripcion;
}
/**
 * @param descripcion the descripcion to set
 */
public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}
/**
 * @return the precio
 */
public double getPrecio() {
	return precio;
}
/**
 * @param precio the precio to set
 */
public void setPrecio(double precio) {
	this.precio = precio;
}
/**
 * @return the cantidad
 */
public int getCantidad() {
	return cantidad;
}
/**
 * @param cantidad the cantidad to set
 */
public void setCantidad(int cantidad) {
	this.cantidad = cantidad;
}
@Override
public String toString() {
	return "TipoEntrada [id_tipoEntrada=" + id_tipoEntrada + ", descripcion=" + descripcion + ", precio=" + precio
			+ ", cantidad=" + cantidad + "]";
}


}
