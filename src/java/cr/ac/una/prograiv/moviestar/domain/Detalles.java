package cr.ac.una.prograiv.moviestar.domain;
// Generated 14/05/2016 08:57:58 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Detalles generated by hbm2java
 */
public class Detalles  implements java.io.Serializable {


     private DetallesId id;
     private Catalogos catalogos;
     private Ordenes ordenes;
     private String DTipo;
     private Date DFechaLimite;
     private Float DPrecio;

    public Detalles() {
    }

	
    public Detalles(DetallesId id, Catalogos catalogos, Ordenes ordenes) {
        this.id = id;
        this.catalogos = catalogos;
        this.ordenes = ordenes;
    }
    public Detalles(DetallesId id, Catalogos catalogos, Ordenes ordenes, String DTipo, Date DFechaLimite, Float DPrecio) {
       this.id = id;
       this.catalogos = catalogos;
       this.ordenes = ordenes;
       this.DTipo = DTipo;
       this.DFechaLimite = DFechaLimite;
       this.DPrecio = DPrecio;
    }
   
    public DetallesId getId() {
        return this.id;
    }
    
    public void setId(DetallesId id) {
        this.id = id;
    }
    public Catalogos getCatalogos() {
        return this.catalogos;
    }
    
    public void setCatalogos(Catalogos catalogos) {
        this.catalogos = catalogos;
    }
    public Ordenes getOrdenes() {
        return this.ordenes;
    }
    
    public void setOrdenes(Ordenes ordenes) {
        this.ordenes = ordenes;
    }
    public String getDTipo() {
        return this.DTipo;
    }
    
    public void setDTipo(String DTipo) {
        this.DTipo = DTipo;
    }
    public Date getDFechaLimite() {
        return this.DFechaLimite;
    }
    
    public void setDFechaLimite(Date DFechaLimite) {
        this.DFechaLimite = DFechaLimite;
    }
    public Float getDPrecio() {
        return this.DPrecio;
    }
    
    public void setDPrecio(Float DPrecio) {
        this.DPrecio = DPrecio;
    }




}


