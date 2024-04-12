global main ; Объявление глобальной точки входа программы

section .data
    n: dd 2          
    number: dd 4     
    c: dd 0          ; Инициализация переменной c
    root: dd 0       
    fmt_read: db "%d", 0    ; Формат для чтения числа
    fmt_write: db "%d", 10, 0 ; Формат для вывода числа с переносом строки

default rel  ; Установка типа адресации по умолчанию
extern printf, scanf  ; Объявление внешних функций

section .text
main:  
    push rbp  ; Сохранение базового указателя стека
    mov rbp, rsp  ; Копирование указателя стека в регистр базового указателя

    mov rdi, fmt_read  ; Загрузка адреса формата ввода в rdi
    mov rsi, n  
    xor rax, rax  ; Обнуление rax
    call scanf  ; Вызов функции scanf для ввода числа

_loop_n:  ; Метка для цикла ввода чисел
    mov byte [root], 0  ; Обнуление переменной root
    dec byte [n]  ; Уменьшение значения переменной n на 1

    mov rdi, fmt_read  
    mov rsi, number  
    xor rax, rax  ; Обнуление rax
    call scanf  ; Вызов функции scanf для ввода числа

_loop_root:  ; Метка для цикла проверки квадратов
    inc byte [root]  ; Увеличение значения переменной root на 1

    mov eax, [root]  
    mov ebx, [root]  
    mul rbx  ; Умножение eax на ebx
    cmp eax, [number]  ; Сравнение результата умножения с number
    je _equal  ; Переход в случае равенства

    mov eax, [root]  
    mov ebx, [root]  
    mul rbx  ; Умножение eax на ebx
    cmp eax, [number]  ; Сравнение результата умножения с number
    jle _loop_root  ; Переход, если результат меньше или равен number

    cmp byte [n], 0  ; Сравнение значения n с нулем
    jg _loop_n  ; Переход к циклу ввода чисел, если n больше 0
    jmp _write  

_equal:  ; Метка для обработки равных квадратов
    inc byte [c]  

    mov eax, [root]  
    mov ebx, [root]  
    mul rbx  ; Умножение eax на ebx
    cmp eax, [number]  ; Сравнение результата умножения с number
    jle _loop_root  ; Переход к следующей итерации цикла, если результат меньше или равен number

    cmp byte [n], 0  ; Сравнение значения n с нулем
    jg _loop_n  ; Переход к циклу ввода чисел, если n больше 0
    jmp _write  ; Безусловный переход к выводу результата

_write:  ; Метка для вывода результата
    mov rdi, fmt_write  ; Загрузка адреса формата вывода в rdi
    mov rsi, [c]  ; Загрузка значения c в rsi
    xor rax, rax  ; Обнуление rax
    call printf  ; Вызов функции printf для вывода

    mov rax, 60  ; Загрузка значения 60 в rax (завершение программы)
    mov rdi, 0  ; Установка кода завершения
    syscall  ; Вызов системного вызова для завершения программы
