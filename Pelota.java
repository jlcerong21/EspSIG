public class Pelota {        

    String tipo;                              //DEFINIR ATRIBUTOS (CARACTERISTICA)
    int fuerzaRebote; // entre 1 y 10

    Pelota(String tipo, int fuerzaRebote) {   //CONSTRUCTOR de la clase Pelota
        this.tipo = tipo;
        this.fuerzaRebote = fuerzaRebote;
    } 

    public void botar() {                      //CONDICIONAL IF DENTRO DEL METODO botar()
        if (fuerzaRebote > 5) {
            System.out.println("La pelota de " + tipo + " bota muy fuerte.");
        } else {
            System.out.println("La pelota de " + tipo + " bota suave.");
        }
    }

    // Uso de FOR                             //CONDICIONAL DENTRO DEL METODO rebotar()
    public void rebotar() {
        System.out.println("Rebotes de la pelota de " + tipo + ":");
        for (int i = 1; i <= fuerzaRebote; i++) {
            System.out.println("Rebote #" + i);
        }
    }
}

//Los METODOS se crean dentro de las clases.
