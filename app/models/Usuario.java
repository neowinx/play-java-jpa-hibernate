package models;

import play.db.ebean.Model;

import javax.persistence.*;

@Entity
public class Usuario extends Model {

    @Id
    public Long id;

    public String usuario;

    @OneToOne
    @PrimaryKeyJoinColumn
    public Proveedor proveedor;

}
