package pharmacie.app.models;

public class Forme extends Fonctions{
    Integer id;
    String nom;

    public Forme() {
    }

    public Forme(Integer id, String nom) {
        this.id = id;
        this.nom = nom;
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

}
