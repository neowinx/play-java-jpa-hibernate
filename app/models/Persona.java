package models;

import javax.persistence.*;

@Entity
@Table(name = "persona")
@Inheritance(strategy = InheritanceType.JOINED)
public class Persona {

    @Id
    @GeneratedValue(generator = "PER_GENERATOR", strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name = "PER_GENERATOR", sequenceName = "proveedor_seq", allocationSize = 1, initialValue = 1)
    public Long id;
    public String documento;
    public String apellidos;
    public String nombre;

}
