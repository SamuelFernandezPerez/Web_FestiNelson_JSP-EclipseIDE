package FM;

public class VentaProductos {
private int id_venta;
private int id_tarjeta;
private int id_producto;
/**
 * 
 */
public VentaProductos() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @param id_venta
 * @param id_tarjeta
 * @param id_producto
 */
public VentaProductos(int id_venta, int id_tarjeta, int id_producto) {
	super();
	this.id_venta = id_venta;
	this.id_tarjeta = id_tarjeta;
	this.id_producto = id_producto;
}
/**
 * @return the id_venta
 */
public int getId_venta() {
	return id_venta;
}
/**
 * @param id_venta the id_venta to set
 */
public void setId_venta(int id_venta) {
	this.id_venta = id_venta;
}
/**
 * @return the id_tarjeta
 */
public int getId_tarjeta() {
	return id_tarjeta;
}
/**
 * @param id_tarjeta the id_tarjeta to set
 */
public void setId_tarjeta(int id_tarjeta) {
	this.id_tarjeta = id_tarjeta;
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
@Override
public String toString() {
	return "VentaProductos [id_venta=" + id_venta + ", id_tarjeta=" + id_tarjeta + ", id_producto=" + id_producto + "]";
}


}
