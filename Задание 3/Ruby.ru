puts "Введите количество чисел: "
n = gets.chomp.to_i // Запрашивает пользователя ввести число

count = 0 // переменная - счётчик
for i in 0...n
  print "Введите число: "
  num = gets.chomp.to_i // ввод чисел для проверки на полный квадрат
  if Math.sqrt(num) == Math.sqrt(num).to_i // проверка. Является ли квадрат целым числом.    
    count += 1
  end
end

puts "Количество полных квадратов: #{count}"
