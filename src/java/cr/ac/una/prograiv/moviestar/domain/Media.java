package cr.ac.una.prograiv.moviestar.domain;
// Generated 08/05/2016 06:56:16 AM by Hibernate Tools 4.3.1



/**
 * Media generated by hbm2java
 */
public class Media  implements java.io.Serializable {


     private Integer id;
     private String url;
     private String categoria;

    public Media() {
    }

    public Media(String url, String categoria) {
       this.url = url;
       this.categoria = categoria;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    public String getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }




}


