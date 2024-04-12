import kotlin.math.sqrt
import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    println("Введите количество чисел: ")
    val n = scanner.nextInt() // вводим количество чисел с клавиатуры

    var count = 0 // переменная - счётчик
    repeat(n) {
        print("Введите число: ")
        val num = scanner.nextInt() // Вводим числа для проверки с клавиатуры
        if (sqrt(num.toDouble()) % 1.0 == 0.0) { // проверка. Является ли полный квадрат целым числом
            count++
        }
    }

    println("Количество полных квадратов: $count")
}
