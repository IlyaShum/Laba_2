#include <iostream> 
#include <string> 
#include <cctype> 
using namespace std;
bool isPangram(const string& str) { 
    bool alphabet[26] = { false }; // Создание массива для хранения информации о встреченных буквах алфавита

    for (char c : str) {
        if (isalpha(c)) { // Проверка, является ли символ буквой
            int index = tolower(c) - 'a'; // Вычисление индекса буквы
            alphabet[index] = true; // Пометка буквы как встреченной
        }
    }

    for (bool letter : alphabet) { // Цикл по всем буквам алфавита
        if (!letter) { // Проверка, встречена ли данная буква
            return false; // Если хотя бы одной буквы не было в строке, возвращаем false
        }
    }

    return true; // Если все буквы алфавита были в строке, возвращаем true
}

int main() { 
    setlocale(LC_ALL, "Rus");
    string input; 
    cout << "Введите строку для проверки на панграмму: "; 
    getline(std::cin, input); // Считывание строки из консоли

    if (isPangram(input)) { // Проверка, является ли введенная строка панграммой
        cout << "True" << endl; 
    }
    else {
        cout << "False" << endl; 
    }

    return 0; 
}
