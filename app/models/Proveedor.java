package models;

import play.db.ebean.Model;

import javax.persistence.*;

@Entity
public class Proveedor extends Model {

    @Id
    public Long id;
    public String nombre;

    @OneToOne
    @PrimaryKeyJoinColumn
    public Usuario usuario;

}
