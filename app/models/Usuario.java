package models;

import play.db.ebean.Model;

import javax.persistence.*;

@Entity
public class Usuario extends Model {

    @Id
    public Long id;
    public String usuario;

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @MapsId("id")
    public Persona persona;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    public Proveedor proveedor;

}
