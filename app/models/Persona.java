package models;

import play.db.ebean.Model;

import javax.persistence.*;

@Entity
public class Persona extends Model {

    @Id public Long id;
    public String documento;
    public String apellidos;
    public String nombres;

    @OneToOne
    @MapsId("id")
    public Usuario usuario;

}
