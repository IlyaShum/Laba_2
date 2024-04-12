import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите число N: ");
        int N = scanner.nextInt(); // считывание значения, введенного пользователем, в переменную N.

        for (int i = 0; i < N; i++) {
            char pattern = (char) ('A' + N - 1); // задание начального символа для каждой строки.
            for (int j = 0; j <= i; j++) {
                System.out.print(pattern + " "); // вывод текущего значения символа
                pattern--; // уменьшение значения символа для вывода следующего символа в строке
            }
            System.out.println();
        }
    }
}
