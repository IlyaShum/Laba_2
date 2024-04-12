package main

import (
    "fmt"
    "math"
)

func main() {
    var n int
    fmt.Println("Введите количество чисел: ")
    fmt.Scanln(&n) // Запрашивает пользователя ввести число

    count := 0 // переменная - счётчик
    for i := 0; i < n; i++ {
        var num int
        fmt.Println("Введите число: ")
        fmt.Scanln(&num)

        if math.Sqrt(float64(num)) == float64(int(math.Sqrt(float64(num)))) { // проверка. Является ли квадрат целым числом.    

            count++
        }
    }

    fmt.Println("Количество полных квадратов:", count)
}
