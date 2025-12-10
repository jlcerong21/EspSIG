public class Asteriscos{

    public static void main(String[] args) {
        int N = 10; 

        for (int i = 1; i <= N; i++) {
            for (int k = 1; k <= N - i; k++) {
                System.out.print(" ");
            }
            
            int numAsteriscos = 2 * i - 1;
            for (int j = 1; j <= numAsteriscos; j++) {
                System.out.print("*");
            }
            
            System.out.println();
        }
    }
}