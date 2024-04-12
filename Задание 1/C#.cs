using System;

class Program
{
    static void Main()
    {
        int N;
        Console.Write("Введите число N: ");
        N = int.Parse(Console.ReadLine()); // считывание значения, введенного пользователем, в переменную N.

        for (int i = 0; i < N; i++)
        {
            char pattern = (char)('A' + N - 1);// задание начального символа для каждой строки. Символ выбирается из английского алфавита, начиная с символа 'A' и уменьшая на величину N-1.
            for (int j = 0; j <= i; j++)
            {
                Console.Write(pattern-- + " "); // вывод текущего значения символа и последующее уменьшение его значения для вывода следующего символа в строке.
            }
            Console.WriteLine();
        }

        Console.ReadLine();
    }
}
    
