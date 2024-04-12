import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Введите количество чисел: ");
        int n = scanner.nextInt();  // вводим число с клавиатуры

        int count = 0; // переменная - счётчик
        for (int i = 0; i < n; i++) {
            System.out.println("Введите число: ");
            int num = scanner.nextInt(); // Вводим числа с клавиатуры

            if (Math.sqrt(num) == (int) Math.sqrt(num)) { // проверка является ли корень целым числом 
                count++;
            }
        }

        System.out.println("Количество полных квадратов: " + count);
    }
}
