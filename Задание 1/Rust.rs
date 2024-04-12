use std::io;

fn main() {
    println!("Введите число N: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let N: i32 = input.trim().parse().unwrap(); // считывание значения, введенного пользователем, в переменную N.

    for i in 0..N {
        let mut pattern = ('A' as u8 + N as u8 - 1) as char; // задание начального символа для каждой строки.
        for _ in 0..=i {
            print!("{} ", pattern); // вывод текущего значения символа
            pattern = (pattern as u8 - 1) as char; // уменьшение значения символа для вывода следующего символа в строке
        }
        println!();
    }
}
