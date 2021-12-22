package pharmacie.app.controller;

import java.sql.Connection;

import com.google.gson.Gson;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import pharmacie.app.models.*;

@RestController
public class Controller {
    @GetMapping("/Hello")
    public String hello() {
        return "Hello";
    }
    @GetMapping("/maladies")
    public String getAllMaladies() throws Exception {
        Gson gson = new Gson();
        Log log=null;
        Object[]all=null;
        try {
            log = new Log();
            Connection con = log.getCon();
            Maladie filter = new Maladie();
            all = filter.find(con);
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return e.getMessage();
        }finally{
            log.close();
        }
        return gson.toJson(new ReturnMessage("token", "ehehe", true, true, all));
    }
    @GetMapping("/maladies/{name}")
    public String getSpecificMaladies(@PathVariable("name") String name) throws Exception {
        Gson gson = new Gson();
        Log log=null;
        Object[]all=null;
        try {
            log = new Log();
            Connection con = log.getCon();
            Maladie filter = new Maladie(null, name);
            all = filter.pgFindLike(con);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return e.getMessage();
        }finally{
            log.close();
        }
        return gson.toJson(new ReturnMessage("token", "ehehe", true, true, all));
    }

    @GetMapping("/effetSecondaires")
    public String getAllEffets() throws Exception {
        Gson gson = new Gson();
        Log log=null;
        Object[]all=null;
        try {
            log = new Log();
            Connection con = log.getCon();
            EffetSecondaire filter = new EffetSecondaire();
            all = filter.find(con);
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return e.getMessage();
        }finally{
            log.close();
        }
        return gson.toJson(new ReturnMessage("token", "ehehe", true, true, all));
    }

    @GetMapping("/formes")
    public String getAllFormes() throws Exception {
        Gson gson = new Gson();
        Log log=null;
        Object[]all=null;
        try {
            log = new Log();
            Connection con = log.getCon();
            Forme filter = new Forme();
            all = filter.find(con);
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return e.getMessage();
        }finally{
            log.close();
        }
        return gson.toJson(new ReturnMessage("token", "ehehe", true, true, all));
    }
    @GetMapping("/sousFormes")
    public String getAllSousFormes() throws Exception {
        Gson gson = new Gson();
        Log log=null;
        Object[]all=null;
        try {
            log = new Log();
            Connection con = log.getCon();
            SousForme filter = new SousForme();
            all = filter.find(con);
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return e.getMessage();
        }finally{
            log.close();
        }
        return gson.toJson(new ReturnMessage("token", "ehehe", true, true, all));
    }
   
}
