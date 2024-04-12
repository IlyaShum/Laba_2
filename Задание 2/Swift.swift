func isPangram(_ inputStr: String) -> Bool {
    var alphabet = Array(repeating: false, count: 26)  // Создаем массив из 26 элементов, представляющих каждую букву алфавита

    for c in inputStr {
        if c.isLetter {  // Проверяем, является ли символ буквой
            let index = Int(c.lowercased().unicodeScalars.first!.value) - Int("a".unicodeScalars.first!.value)  // Получаем индекс буквы в алфавите и обновляем соответствующий элемент в массиве
            alphabet[index] = true
        }
    }

    for letter in alphabet {
        if !letter {  // Если хотя бы один элемент массива равен false, значит не все буквы встречаются в строке
            return false
        }
    }

    return true
}

print("Введите строку для проверки на панграмму:")
if let inputStr = readLine() {
    if isPangram(inputStr) {
        print("True")
    } else {
        print("False")
    }
}
