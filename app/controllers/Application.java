package controllers;

import models.Proveedor;
import models.Usuario;
import play.*;
import play.mvc.*;

import views.html.*;

public class Application extends Controller {
  
    public static Result index(String nombreParam) {
        try {
            Proveedor prov = new Proveedor();
            prov.nombre = nombreParam;
            prov.usuario = new Usuario();
            prov.usuario.usuario = "usu_" + nombreParam;
            prov.save();
            return ok("Proveedor " + nombreParam + " grabado exitosamente. Su usuario es " + prov.usuario.usuario);
        } catch (Exception ex) {
            return badRequest("Opps algo salio mal. No se pudo grabar a " + nombreParam);
        }

    }
  
}
