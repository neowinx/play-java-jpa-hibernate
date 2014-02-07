package models;

import play.db.ebean.Model;

import javax.persistence.*;
import java.util.List;
import java.util.Vector;

@Entity
public class Proveedor extends Model {

    @Id
    public Long id;
    public String nombre;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    public List<Usuario> usuarios = new Vector<Usuario>();

    public static Model.Finder<Long,Proveedor> find = new Model.Finder(Long.class, Proveedor.class);

}
