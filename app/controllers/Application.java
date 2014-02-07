package controllers;

import models.Proveedor;
import models.Usuario;
import play.*;
import play.libs.Json;
import play.mvc.*;

import views.html.*;

public class Application extends Controller {

    public static Result list() {
        return ok(Json.toJson(Proveedor.find.all()));
    }
  
    public static Result save(String nombreParam) {
        try {
            Proveedor prov = new Proveedor();
            prov.nombre = nombreParam;
            Usuario usu = new Usuario();
            usu.usuario = "usu_" + nombreParam;
            prov.usuarios.add(usu);
            prov.save();
            return ok("Proveedor " + nombreParam + " grabado exitosamente.");
        } catch (Exception ex) {
            return badRequest("Opps algo salio mal. No se pudo grabar a " + nombreParam);
        }

    }

    public static Result saveNoMapping(String nombreParam) {
        try {
            Proveedor prov = new Proveedor();
            prov.nombre = nombreParam;
            Usuario usu = new Usuario();
            usu.usuario = "usu_" + nombreParam;
            prov.usuarios.add(usu);
            prov.save();
            return ok("Proveedor " + nombreParam + " grabado exitosamente.");
        } catch (Exception ex) {
            return badRequest("Opps algo salio mal. No se pudo grabar a " + nombreParam);
        }

    }
  
}
