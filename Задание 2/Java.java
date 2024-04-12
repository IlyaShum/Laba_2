import java.util.Scanner;

public class Main {
 public static boolean isPangram(String str) {
 // Создание массива для хранения информации о встреченных буквах алфавита
 boolean[] alphabet = new boolean[26];

 char c : str.toCharArray()) {
 // Проверка, является ли символ буквой
 if (Character.isLetter(c)) {
 // Вычисление индекса буквы
 int index = Character.toLowerCase(c) - 'a';
 // Пометка буквы как встреченной
 alphabet[index] = true;
 }
 }

 // Проверка, встречены ли все буквы алфавита в строке
 for (boolean letter : alphabet) {
 if (!letter) {
 // Если хотя бы одной буквы не было в строке, возвращаем false
 return false;
 }
 }

 // Если все буквы алфавита были в строке, возвращаем true
 return true;
 }

 public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Введите строку для проверки на панграмму: ");
        String input = scanner.nextLine();

        // Проверка, является ли введенная строка панграммой
        if (isPangram(input)) {
            System.out.println("True");
        } else {
            System.out.println("False");
        }
    }
}
