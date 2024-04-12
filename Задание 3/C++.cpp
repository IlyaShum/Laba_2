#include <iostream>
#include <cmath>
using namespace std;
int main() {
    setlocale(LC_ALL, "Rus");
    int n;
    cout << "Введите количество чисел: ";
    cin >> n; // Запрашиваем пользователя ввести количество чисел

    int count = 0; // переменная - счётчик
    for (int i = 0; i < n; ++i) {
        int num;
        cout << "Введите число: ";
        cin >> num;// запрашиваем пользователя ввести сами числа
        if (sqrt(num) == static_cast<int>(sqrt(num))) { // Если квадратный корень числа num является целым числом, то условие будет истинным
            count++;
        }
    }

    cout << "Количество полных квадратов: " << count << endl;

    return 0;
}
