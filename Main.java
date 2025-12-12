public class Main {

    public static void main(String[] args) {

        // OBJETOS DE PELOTA
        Pelota futbol = new Pelota("Fútbol", 5);
        Pelota tenis = new Pelota("Tenis", 2);
        Pelota baloncesto = new Pelota("Baloncesto", 7);

        // OBJETOS DE ROBOT
        Robot alfa = new Robot("Alfa", 4);
        Robot beta = new Robot("Beta", 2);
        Robot gamma = new Robot("Gamma", 6);

        // COMPORTAMIENTOS PELOTA      //Objeto.Metodo --> Ejecuta el metodo del objeto
        futbol.botar();
        tenis.botar();
        baloncesto.botar();

        futbol.rebotar();
        tenis.rebotar();
        baloncesto.rebotar();

        // COMPORTAMIENTOS ROBOT
        alfa.trabajar();
        beta.trabajar();
        gamma.trabajar();

        alfa.cargarBateria();
        beta.cargarBateria();
        gamma.cargarBateria();
    }
}
