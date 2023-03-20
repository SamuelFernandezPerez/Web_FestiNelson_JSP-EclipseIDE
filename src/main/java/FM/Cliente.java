package FM;

public class Cliente {
private int id_cliente;
private String dni;
private String nombre;
private String apellidos;
private String direccion;
private String cp;
private String provincia;
private String fecha_nacimiento;
public Cliente() {
	super();
	// TODO Auto-generated constructor stub
}
public Cliente(int id_cliente, String dni, String nombre, String apellidos, String direccion, String cp,
		String provincia, String fecha_nacimiento) {
	super();
	this.id_cliente = id_cliente;
	this.dni = dni;
	this.nombre = nombre;
	this.apellidos = apellidos;
	this.direccion = direccion;
	this.cp = cp;
	this.provincia = provincia;
	this.fecha_nacimiento = fecha_nacimiento;
}
public int getId_cliente() {
	return id_cliente;
}
public void setId_cliente(int id_cliente) {
	this.id_cliente = id_cliente;
}
public String getDni() {
	return dni;
}
public void setDni(String dni) {
	this.dni = dni;
}
public String getNombre() {
	return nombre;
}
public void setNombre(String nombre) {
	this.nombre = nombre;
}
public String getApellidos() {
	return apellidos;
}
public void setApellidos(String apellidos) {
	this.apellidos = apellidos;
}
public String getDireccion() {
	return direccion;
}
public void setDireccion(String direccion) {
	this.direccion = direccion;
}
public String getCp() {
	return cp;
}
public void setCp(String cp) {
	this.cp = cp;
}
public String getProvincia() {
	return provincia;
}
public void setProvincia(String provincia) {
	this.provincia = provincia;
}
public String getFecha_nacimiento() {
	return fecha_nacimiento;
}
public void setFecha_nacimiento(String fecha_nacimiento) {
	this.fecha_nacimiento = fecha_nacimiento;
}
@Override
public String toString() {
	return "Cliente [id_cliente=" + id_cliente + ", dni=" + dni + ", nombre=" + nombre + ", apellidos=" + apellidos
			+ ", direccion=" + direccion + ", cp=" + cp + ", provincia=" + provincia + ", fecha_nacimiento="
			+ fecha_nacimiento + "]";
}

}
