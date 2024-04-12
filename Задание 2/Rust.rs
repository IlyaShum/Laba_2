use std::io;

fn is_pangram(str: &str) -> bool {
    let mut alphabet = [false; 26]; // Создание массива для хранения информации о встреченных буквах алфавита

    for c in str.chars() {
        if c.is_alphabetic() { // Проверка, является ли символ буквой
            let index = c.to_ascii_lowercase() as usize - 'a' as usize; // Вычисление индекса буквы
            alphabet[index] = true; // Пометка буквы как встреченной
        }
    }

    for &letter in alphabet.iter() { 
        if !letter { // Проверка, встречена ли данная буква
            return false; // Если хотя бы одной буквы не было в строке, возвращаем false
        }
    }

    true // Если все буквы алфавита были в строке, возвращаем true
}

fn main() {
    println!("Введите строку для проверки на панграмму:");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка при чтении строки"); // Считывание строки из консоли

    if is_pangram(&input) { // Проверка, является ли введенная строка панграммой
        println!("True");
    } else {
        println!("False");
    }
}
