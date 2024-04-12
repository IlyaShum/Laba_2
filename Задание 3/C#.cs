using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Введите количество чисел: ");
        int n = int.Parse(Console.ReadLine()); // пользователь вводит количество чисел для проверки на полный квадрат

        int count = 0;// переменная - счётчик
        for (int i = 0; i < n; i++)
        {
            Console.WriteLine("Введите число: ");
            int num = int.Parse(Console.ReadLine()); // пользователь вводит сами числа 
            if (Math.Sqrt(num) == (int)Math.Sqrt(num))// проверка. Является ли квадрат целым числом.
            {
                count++;
            }
        }

        Console.WriteLine("Количество полных квадратов: " + count);
    }
}
