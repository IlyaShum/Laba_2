using System;

class Program
{
    // Метод для проверки, является ли введенная строка панграммой
    static bool IsPangram(string inputStr)
    {
        bool[] alphabet = new bool[26];  // Создаем массив из 26 элементов, представляющих каждую букву английского алфавита

        // Проверяем каждый символ в строке
        foreach (char c in inputStr)
        {
            if (char.IsLetter(c))  // Проверяем, является ли символ буквой
            {
                int index = char.ToLower(c) - 'a';  // Получаем индекс буквы в алфавите и обновляем соответствующий элемент в массиве
                alphabet[index] = true;
            }
        }

        // Проверяем, есть ли хотя бы один символ, который не встречается в строке
        foreach (bool letter in alphabet)
        {
            if (!letter)  // Если хотя бы один элемент массива равен false, значит не все буквы встречаются в строке
            {
                return false;
            }
        }

        return true;
    }

    static void Main()
    {
        Console.WriteLine("Введите строку для проверки на панграмму: ");
        string inputStr = Console.ReadLine();

        // Проверяем и выводим результат
        if (IsPangram(inputStr))
        {
            Console.WriteLine("True");
        }
        else
        {
            Console.WriteLine("False");
        }
    }
}
