package controllers;

import models.Proveedor;
import models.Usuario;
import play.*;
import play.db.jpa.JPA;
import play.db.jpa.Transactional;
import play.mvc.*;

import views.html.*;

public class Application extends Controller {

    @Transactional
    public static Result index(String nombreParam) {
        try {
            Proveedor prov = new Proveedor();
            prov.nombre = nombreParam;
            Usuario usu1 = new Usuario();
            usu1.usuario = "usu_" + nombreParam;
            Usuario usu2 = new Usuario();
            usu2.usuario = "usu_" + nombreParam;
            prov.usuarios.add(usu1);
            prov.usuarios.add(usu2);
            JPA.em().persist(prov);
            return ok("Proveedor " + nombreParam + " grabado exitosamente.");
        } catch (Exception ex) {
            return badRequest("Opps algo salio mal. No se pudo grabar a " + nombreParam);
        }

    }
  
}
