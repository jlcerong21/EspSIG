import java.util.Scanner;

public class Cubo{
    public static void main(String[] args) {
        Scanner ingreso = new Scanner(System.in);

        int N = 3;
        int cubo[][][] = new int[N][N][N];

        int promedio[] = new int[4];
        int max[] = new int[4];
        int min[] = new int[4];
 
        for (int x = 0; x < N; x++) {                                                                 //SE USA FOR PARA LA ENTRADA DE DATOS
            for (int y = 0; y < N; y++) {
                for (int z = 0; z < N; z++) {
                    System.out.println("Ingrese la posición en X=" + x + " Y=" + y + " Z=" + z);
                    cubo[x][y][z] = ingreso.nextInt();
                }
            }
        }

        System.out.println("\nCentro del cubo (1,1,1): " + cubo[1][1][1]);                            // PARA EL CENTRO SERIA X=1, Y=1, Z=1

        System.out.println("\nPlano horizontal central (z=1):");                                      // PARA EL MEDIO U HORIZONTAL Z=1
        for (int x = 0; x < N; x++) {
            for (int y = 0; y < N; y++) {
                System.out.print(cubo[x][y][1] + "\t");
            }
            System.out.println();
        }

        max[0] = cubo[0][0][0];                                         //TODAS LAS DIAGONALES PASAN POR EL CENTRO (1,1,1) Y SE REFIEREN A LA UNION DE LAS ESQUINAS OPUESTAS
        min[0] = cubo[0][0][0];

        max[1] = cubo[0][0][2];
        min[1] = cubo[0][0][2];

        max[2] = cubo[0][2][0];
        min[2] = cubo[0][2][0];

        max[3] = cubo[0][2][2];
        min[3] = cubo[0][2][2];

        for (int i = 0; i < N; i++) {

            if (max[0] < cubo[i][i][i]) {
                max[0] = cubo[i][i][i];
            }
            if (min[0] > cubo[i][i][i]) {
                min[0] = cubo[i][i][i];
            }
            promedio[0] = promedio[0] + cubo[i][i][i];

            if (max[1] < cubo[i][i][N - 1 - i]) {
                max[1] = cubo[i][i][N - 1 - i];
            }
            if (min[1] > cubo[i][i][N - 1 - i]) {
                min[1] = cubo[i][i][N - 1 - i];
            }
            promedio[1] = promedio[1] + cubo[i][i][N - 1 - i];

            if (max[2] < cubo[i][N - 1 - i][i]) {
                max[2] = cubo[i][N - 1 - i][i];
            }
            if (min[2] > cubo[i][N - 1 - i][i]) {
                min[2] = cubo[i][N - 1 - i][i];
            }
            promedio[2] = promedio[2] + cubo[i][N - 1 - i][i];

            if (max[3] < cubo[i][N - 1 - i][N - 1 - i]) {
                max[3] = cubo[i][N - 1 - i][N - 1 - i];
            }
            if (min[3] > cubo[i][N - 1 - i][N - 1 - i]) {
                min[3] = cubo[i][N - 1 - i][N - 1 - i];
            }
            promedio[3] = promedio[3] + cubo[i][N - 1 - i][N - 1 - i];
        }

        promedio[0] = promedio[0] / 3;               //SE DIVIDE EN 3 PORQUE LA MATRIZ ES 3x3
        promedio[1] = promedio[1] / 3;
        promedio[2] = promedio[2] / 3;
        promedio[3] = promedio[3] / 3;

        System.out.println("\nResultados por diagonal espacial (4 diagonales):");
        for (int d = 0; d < 4; d++) {
            System.out.println("Para la diagonal d=" + d +
                    " el max: " + max[d] +
                    " el min: " + min[d] +
                    " el prom: " + promedio[d]);
        }

        ingreso.close();
    }
}