package FM;

public class VentaEntradas {
	private int id_ventaEntrada;
	private int id_tarjeta;
	private int id_entrada;
	/**
	 * 
	 */
	public VentaEntradas() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param id_ventaEntrada
	 * @param id_tarjeta
	 * @param id_entrada
	 */
	public VentaEntradas(int id_ventaEntrada, int id_tarjeta, int id_entrada) {
		super();
		this.id_ventaEntrada = id_ventaEntrada;
		this.id_tarjeta = id_tarjeta;
		this.id_entrada = id_entrada;
	}
	/**
	 * @return the id_ventaEntrada
	 */
	public int getId_ventaEntrada() {
		return id_ventaEntrada;
	}
	/**
	 * @param id_ventaEntrada the id_ventaEntrada to set
	 */
	public void setId_ventaEntrada(int id_ventaEntrada) {
		this.id_ventaEntrada = id_ventaEntrada;
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
	 * @return the id_entrada
	 */
	public int getId_entrada() {
		return id_entrada;
	}
	/**
	 * @param id_entrada the id_entrada to set
	 */
	public void setId_entrada(int id_entrada) {
		this.id_entrada = id_entrada;
	}
	@Override
	public String toString() {
		return "VentaEntradas [id_ventaEntrada=" + id_ventaEntrada + ", id_tarjeta=" + id_tarjeta + ", id_entrada="
				+ id_entrada + "]";
	}
	
}
