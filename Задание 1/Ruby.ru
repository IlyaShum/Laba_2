puts "Введите число N: "
n = gets.chomp.to_i // принимает значение от пользователя и преобразует введенное значение в целое число.

for i in 0...n
  pattern = ('A'.ord + n - 1).chr // Устанавливает начальное значение переменной pattern как букву 'A' с учетом введенного числа n

  for j in 0..i
    print "#{pattern} "// Выводит текущее значение переменной pattern с пробелом

    pattern = (pattern.ord - 1).chr // Уменьшает значение переменной pattern на 1 (переход к предыдущей букве в алфавите)


  end
  puts // переход на следующую строчку.
End
