package cr.ac.una.prograiv.moviestar.domain;
// Generated 08/05/2016 06:56:16 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Ordenes generated by hbm2java
 */
public class Ordenes  implements java.io.Serializable {


     private int OId;
     private Usuarios usuarios;
     private String OEstado;
     private Date OFecha;
     private Set detalleses = new HashSet(0);

    public Ordenes() {
    }

	
    public Ordenes(int OId, String OEstado) {
        this.OId = OId;
        this.OEstado = OEstado;
    }
    public Ordenes(int OId, Usuarios usuarios, String OEstado, Date OFecha, Set detalleses) {
       this.OId = OId;
       this.usuarios = usuarios;
       this.OEstado = OEstado;
       this.OFecha = OFecha;
       this.detalleses = detalleses;
    }
   
    public int getOId() {
        return this.OId;
    }
    
    public void setOId(int OId) {
        this.OId = OId;
    }
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    public String getOEstado() {
        return this.OEstado;
    }
    
    public void setOEstado(String OEstado) {
        this.OEstado = OEstado;
    }
    public Date getOFecha() {
        return this.OFecha;
    }
    
    public void setOFecha(Date OFecha) {
        this.OFecha = OFecha;
    }
    public Set getDetalleses() {
        return this.detalleses;
    }
    
    public void setDetalleses(Set detalleses) {
        this.detalleses = detalleses;
    }




}


