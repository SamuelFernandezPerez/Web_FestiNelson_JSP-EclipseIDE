package FM;

public class Producto {
private int id_producto;
private String nombre;
private double precio;
/**
 * 
 */
public Producto() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @param id_producto
 * @param nombre
 * @param precio
 */
public Producto(int id_producto, String nombre, double precio) {
	super();
	this.id_producto = id_producto;
	this.nombre = nombre;
	this.precio = precio;
}
/**
 * @return the id_producto
 */
public int getId_producto() {
	return id_producto;
}
/**
 * @param id_producto the id_producto to set
 */
public void setId_producto(int id_producto) {
	this.id_producto = id_producto;
}
/**
 * @return the nombre
 */
public String getNombre() {
	return nombre;
}
/**
 * @param nombre the nombre to set
 */
public void setNombre(String nombre) {
	this.nombre = nombre;
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
@Override
public String toString() {
	return "Producto [id_producto=" + id_producto + ", nombre=" + nombre + ", precio=" + precio + "]";
}

}
