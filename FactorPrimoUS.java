import java.util.Scanner;

public class FactorPrimoUS {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese un número: ");
        int n = sc.nextInt();

        System.out.println("Factores primos de " + n + ":");
        descomponer(n);
    }

    public static void descomponer(int n) {

        int div = 2;

        while (n > 1) {
            if (n % div == 0) {
                System.out.print(div + " ");
                n = n / div;
            } else {
                div++;
            }
        }

        System.out.println(); // salto final
    }
}
