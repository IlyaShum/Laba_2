import Foundation

// Запрашиваем у пользователя значение N
print("Введите число N:")
if let input = readLine(), let N = Int(input) {
    
    // Выводим паттерн символов по строкам
    for i in 0..<N {
        var pattern = Character(UnicodeScalar(Int(("A" as UnicodeScalar).value) + N - 1)!) // Начальный символ для каждой строки
        for _ in 0...i {
            print(pattern, terminator: " ") // Вывод текущего символа и уменьшение его значения для следующего символа в строке
            pattern = Character(UnicodeScalar(Int(pattern.unicodeScalars.first!.value) - 1)!) // Уменьшаем значение символа
        }
        print("") // Переход на новую строку
    } 
}
