use std::io;

fn main() {
    let mut input = String::new();
    println!("Введите количество чисел: ");
    io::stdin().read_line(&mut input).expect("Ошибка при чтении"); // вводим количество чисел с клавиатуры
    let n: i32 = input.trim().parse().expect("Введено некорректное значение");

    let mut count = 0; // переменная - счётчик
    for _ in 0..n {
        let mut num = String::new();
        println!("Введите число: ");
        io::stdin().read_line(&mut num).expect("Ошибка при чтении");// вводим числа для проверки на полный квадрат
        let num: i32 = num.trim().parse().expect("Введено некорректное значение");

        if (num as f64).sqrt() % 1.0 == 0.0 {// проверка. Является ли полный квадрат целым числом
            count += 1;
        }
    }

    println!("Количество полных квадратов: {}", count);
}
