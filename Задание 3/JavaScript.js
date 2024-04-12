const readline = require('readline'); 

const rl = readline.createInterface({ // Создание интерфейса для ввода-вывода
    input: process.stdin, // Установка стандартного ввода
    output: process.stdout // Установка стандартного вывода
});

rl.question('Введите количество чисел: ', (n) => { // Задание вопроса пользователю и обработка ответа
    let count = 0;  

    (function askInput(i){ // Объявление анонимной функции с параметром i
        if (i < n) { 
            rl.question('Введите число: ', (num) => { 
                if (Math.sqrt(num) === Math.floor(Math.sqrt(num))) { // Проверка, является ли корень числа целым числом
                    count++; 
                }
                askInput(i + 1); // Рекурсивный вызов функции askInput с увеличенным значением i
            });
        } else { 
            console.log("Количество полных квадратов: " + count);
            rl.close(); // Закрытие интерфейса readline
        }
    })(0); // Вызов анонимной функции с начальным значением i равным 0
});
