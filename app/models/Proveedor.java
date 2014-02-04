package models;

import javax.persistence.*;
import java.util.List;
import java.util.Vector;

@Entity
public class Proveedor {

    @Id
    @GeneratedValue(generator = "PROV_GENERATOR", strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name = "PROV_GENERATOR", sequenceName = "proveedor_seq", allocationSize = 1, initialValue = 1)
    public Long id;
    public String nombre;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "proveedor", cascade = CascadeType.ALL)
    public List<Usuario> usuarios = new Vector<Usuario>();

}
