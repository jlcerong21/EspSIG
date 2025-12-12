public class Robot {

    String nombre;
    int bateria; // entre 1 y 10

    Robot(String nombre, int bateria) {
        this.nombre = nombre;
        this.bateria = bateria;
    }

    // Uso de WHILE
    public void trabajar() {

        System.out.println("Robot " + nombre + " iniciando trabajo...");

        int nivel = bateria;

        while (nivel > 0) {
            System.out.println("Trabajando... batería al " + nivel);
            nivel--;
        }

        System.out.println("Robot " + nombre + " se quedó sin batería.");
    }

    // Uso de IF
    public void cargarBateria() {
        if (bateria < 5) {
            System.out.println("Robot " + nombre + " cargando batería...");
            bateria = 10;
        } else {
            System.out.println("Robot " + nombre + " no necesita carga.");
        }
    }
}
