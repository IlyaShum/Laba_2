package main

import (
	"fmt"
	"strings"
	"unicode"
)

func isPangram(s string) bool {
	// Создание массива для хранения информации о встреченных буквах алфавита
	alphabet := [26]bool{}

	// Цикл по всем символам строки
	for _, c := range s {
		// Проверка, является ли символ буквой
		if unicode.IsLetter(c) {
			// Вычисление индекса буквы
			index := int(unicode.ToLower(c) - 'a')
			// Пометка буквы как встреченной
			alphabet[index] = true
		}
	}

	for _, letter := range alphabet {
		if !letter {
			return false
		}
	}

	return true
}

func main() {
	fmt.Print("Введите строку для проверки на панграмму: ")
	var input string
	fmt.Scan(&input)

	if isPangram(input) {
		fmt.Println("True")
	} else {
		fmt.Println("False")
	}
}
