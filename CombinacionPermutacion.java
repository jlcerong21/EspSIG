import java.util.Scanner;

public class CombinacionPermutacion {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Ingrese n: ");
        int n = sc.nextInt();

        System.out.print("Ingrese r: ");
        int r = sc.nextInt();

        // Validaciones simples
        if (n < 0 || r < 0 || r > n) {
            System.out.println("Error: n y r deben ser positivos y cumplir n >= r");
        } else {
            System.out.println("Permutación P(n,r): " + permutacion(n, r));
            System.out.println("Combinación C(n,r): " + combinacion(n, r));
        }

        sc.close();
    }

    public static int factorial(int num) {
        int f = 1;
        for (int i = 1; i <= num; i++) {
            f *= i;
        }
        return f;
    }

    public static int permutacion(int n, int r) {
        return factorial(n) / factorial(n - r);
    }

    public static int combinacion(int n, int r) {
        return factorial(n) / (factorial(r) * factorial(n - r));
    }
}
