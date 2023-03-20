package FM;

public class Tarjeta {
private int id_tarjeta;
private double saldo;
private int id_cliente;
/**
 * 
 */
public Tarjeta() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @param id_tarjeta
 * @param saldo
 * @param id_cliente
 */
public Tarjeta(int id_tarjeta, double saldo, int id_cliente) {
	super();
	this.id_tarjeta = id_tarjeta;
	this.saldo = saldo;
	this.id_cliente = id_cliente;
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
 * @return the saldo
 */
public double getSaldo() {
	return saldo;
}
/**
 * @param saldo the saldo to set
 */
public void setSaldo(double saldo) {
	this.saldo = saldo;
}
/**
 * @return the id_cliente
 */
public int getId_cliente() {
	return id_cliente;
}
/**
 * @param id_cliente the id_cliente to set
 */
public void setId_cliente(int id_cliente) {
	this.id_cliente = id_cliente;
}
@Override
public String toString() {
	return "Tarjeta [id_tarjeta=" + id_tarjeta + ", saldo=" + saldo + ", id_cliente=" + id_cliente + "]";
}

}
