package FM;

public class Entrada {
private int id_entrada;
private int id_tipoEntrada;
public Entrada() {
	super();
	// TODO Auto-generated constructor stub
}
public Entrada(int id_entrada, int id_tipoEntrada) {
	super();
	this.id_entrada = id_entrada;
	this.id_tipoEntrada = id_tipoEntrada;
}
public int getId_entrada() {
	return id_entrada;
}
public void setId_entrada(int id_entrada) {
	this.id_entrada = id_entrada;
}
public int getId_tipoEntrada() {
	return id_tipoEntrada;
}
public void setId_tipoEntrada(int id_tipoEntrada) {
	this.id_tipoEntrada = id_tipoEntrada;
}
@Override
public String toString() {
	return "Entrada [id_entrada=" + id_entrada + ", id_tipoEntrada=" + id_tipoEntrada + "]";
}


}
