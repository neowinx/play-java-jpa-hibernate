package models;

import javax.persistence.*;

@Entity
@Table(name = "usuario")
public class Usuario extends Persona {

    public String usuario;

    @ManyToOne
    @JoinColumn(name = "proveedor_id")
    public Proveedor proveedor;

}
