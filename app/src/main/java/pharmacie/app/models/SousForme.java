package pharmacie.app.models;

public class SousForme extends Fonctions{
    Integer id;
    String nom;
    Integer idForme;
    public SousForme() {
    }

    public SousForme(Integer id, String nom,Integer idForme) {
        this.id = id;
        this.nom = nom;
        this.idForme = idForme;
    }

    public Integer get_Id() {
        return this.id;
    }

    public void set_Id(Object newValue) {
        this.id = Integer.valueOf(String.valueOf(newValue));
    }

    public String get_Nom() {
        return this.nom;
    }

    public void set_Nom(String nom) {
        this.nom = nom;
    }

    public Integer get_IdForme() {
        return this.idForme;
    }
    public void set_IdForme(Object newValue) {
        this.idForme = Integer.valueOf(String.valueOf(newValue));
    }
}
