fun main() {
    fun isPangram(s: String): Boolean {
        // Создание массива для хранения информации о встреченных буквах алфавита
        val alphabet = BooleanArray(26)

        // Цикл по всем символам строки
        s.forEach { c ->
            // Проверка, является ли символ буквой
            if (c.isLetter()) {
                // Вычисление индекса буквы
                val index = c.toLowerCase().toInt() - 'a'.toInt()
                // Пометка буквы как встреченной
                alphabet[index] = true
            }
        }

        // Проверка, встречены ли все буквы алфавита в строке
        alphabet.forEach { letter ->
            if (!letter) {
                return false
            }
        }

        return true
    }

    print("Введите строку для проверки на панграмму: ")
    val input = readLine() ?: ""

    // Проверка, является ли введенная строка панграммой
    if (isPangram(input)) {
        println("True")
    } else {
        println("False")
    }
}
