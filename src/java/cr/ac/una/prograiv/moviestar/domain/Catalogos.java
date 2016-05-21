package cr.ac.una.prograiv.moviestar.domain;
// Generated 14/05/2016 08:57:58 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

/**
 * Catalogos generated by hbm2java
 */
public class Catalogos  implements java.io.Serializable {


     private Integer CId;
     private Categorias categorias;
     private String CNombre;
     private String CDirector;
     private String CActorPrin;
     private Integer CCantidad;
     private String CTipo;
     private Float CPrecAlqu;
     private Float CPrecComp;
     private String CUrlImg;
     private String CDescrip;
     @LazyCollection(LazyCollectionOption.FALSE)
     private Set detalleses = new LinkedHashSet<>();;

    public Catalogos() {
    }

    public Catalogos(Categorias categorias, String CNombre, String CDirector, String CActorPrin, Integer CCantidad, String CTipo, Float CPrecAlqu, Float CPrecComp, String CUrlImg, String CDescrip, Set detalleses) {
       this.categorias = categorias;
       this.CNombre = CNombre;
       this.CDirector = CDirector;
       this.CActorPrin = CActorPrin;
       this.CCantidad = CCantidad;
       this.CTipo = CTipo;
       this.CPrecAlqu = CPrecAlqu;
       this.CPrecComp = CPrecComp;
       this.CUrlImg = CUrlImg;
       this.CDescrip = CDescrip;
       this.detalleses = detalleses;
    }
   
    public Integer getCId() {
        return this.CId;
    }
    
    public void setCId(Integer CId) {
        this.CId = CId;
    }
    public Categorias getCategorias() {
        return this.categorias;
    }
    
    public void setCategorias(Categorias categorias) {
        this.categorias = categorias;
    }
    public String getCNombre() {
        return this.CNombre;
    }
    
    public void setCNombre(String CNombre) {
        this.CNombre = CNombre;
    }
    public String getCDirector() {
        return this.CDirector;
    }
    
    public void setCDirector(String CDirector) {
        this.CDirector = CDirector;
    }
    public String getCActorPrin() {
        return this.CActorPrin;
    }
    
    public void setCActorPrin(String CActorPrin) {
        this.CActorPrin = CActorPrin;
    }
    public Integer getCCantidad() {
        return this.CCantidad;
    }
    
    public void setCCantidad(Integer CCantidad) {
        this.CCantidad = CCantidad;
    }
    public String getCTipo() {
        return this.CTipo;
    }
    
    public void setCTipo(String CTipo) {
        this.CTipo = CTipo;
    }
    public Float getCPrecAlqu() {
        return this.CPrecAlqu;
    }
    
    public void setCPrecAlqu(Float CPrecAlqu) {
        this.CPrecAlqu = CPrecAlqu;
    }
    public Float getCPrecComp() {
        return this.CPrecComp;
    }
    
    public void setCPrecComp(Float CPrecComp) {
        this.CPrecComp = CPrecComp;
    }
    public String getCUrlImg() {
        return this.CUrlImg;
    }
    
    public void setCUrlImg(String CUrlImg) {
        this.CUrlImg = CUrlImg;
    }
    public String getCDescrip() {
        return this.CDescrip;
    }
    
    public void setCDescrip(String CDescrip) {
        this.CDescrip = CDescrip;
    }
    public Set getDetalleses() {
        return this.detalleses;
    }
    
    public void setDetalleses(Set detalleses) {
        this.detalleses = detalleses;
    }




}


