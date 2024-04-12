function isPangram(str) {
    // Создание массива для хранения информации о встреченных буквах алфавита
    const alphabet = new Array(26).fill(false);

    for (let c of str) {
        // Проверка, является ли символ буквой
        if (c.match(/[a-z]/i)) {
            // Вычисление индекса буквы
            let index = c.toLowerCase().charCodeAt(0) - 'a'.charCodeAt(0);
            // Пометка буквы как встреченной
            alphabet[index] = true;
        }
    }

    // Проверка, встречены ли все буквы алфавита в строке
    return alphabet.every(letter => letter);
}

let input = prompt("Введите строку для проверки на понграмму: ");

// Проверка, является ли введенная строка панграммой
if (isPangram(input)) {
    console.log("True");
} else {
    console.log("False");
}
