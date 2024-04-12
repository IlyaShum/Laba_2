def is_pangram(input_str)
    alphabet = Array.new(26, false)  # Создаем массив из 26 элементов, представляющих каждую букву алфавита

    input_str.each_char do |c|
        if c.match?(/[[:alpha:]]/)  # Проверяем, является ли символ буквой
            index = c.downcase.ord - 'a'.ord  # Получаем индекс буквы в алфавите и обновляем соответствующий элемент в массиве
            alphabet[index] = true
        end
    end

    alphabet.each do |letter|
        if !letter  # Если хотя бы один элемент массива равен false, значит не все буквы встречаются в строке
            return false
        end
    end

    return true
end

puts "Введите строку для проверки на панграмму:"
input_str = gets.chomp

if is_pangram(input_str)
    puts "True"
else
    puts "False"
end
