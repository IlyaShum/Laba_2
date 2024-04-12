fun main() {
    print("Введите число N: ")
    val N = readLine()!!.toInt() // Считываем число N от пользователя и преобразуем его в целое число

    for (i in 0 until N) {
        var pattern = 'A' + N – 1 //Начинаем с последней буквы латинского алфавита, которая находится на N позиции

        for (j in 0..i) {
            print("$pattern ") //Выводим текущую букву
            pattern--
        }
        println()
    }
}
