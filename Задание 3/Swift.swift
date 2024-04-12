import Foundation

print("Введите количество чисел: ")
if let input = readLine(), let n = Int(input) {  // Чтение ввода пользователя и преобразование в целое число

    var count = 0
    for _ in 0..<n {
        print("Введите число: ")
        if let input = readLine(), let num = Int(input) {
            if sqrt(Double(num)) == Double(Int(sqrt(Double(num)))) { // проверка. Является ли квадрат целым числом.     
                count += 1
            }
        }
    }

    print("Количество полных квадратов: \(count)")
}
