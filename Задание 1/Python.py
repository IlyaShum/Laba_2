N = int(input("Введите число N: ")) // запрашиваем у пользователя число N
for i in range(N):
    pattern = chr(ord('A') + N - 1) // Начинаем с последней буквы латинского алфавита, которая находится на N позиции
    for j in range(i + 1): 
        print(pattern, end=" ") //Выводим текущую букву
        pattern = chr(ord(pattern) - 1) //Переходим к предыдущей букве
    print()
