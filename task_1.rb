=begin
Задача 1. Разработайте функцию,
 которая принимает целое число в качестве аргумента и возвращает строку,
  содержащую это число и слово "компьютер" в нужном склонении по падежам в зависимости от числа.
   Например, при вводе числа 25 функция должна возвращать "25 компьютеров",
    для числа 41 — "41 компьютер",
     а для числа 1048 — "1048 компьютеров".
=end

def task_1(n)

	arr_computers = ["компьютеров", "компьютер", "компьютера"]
  
  if (n % 100).between?(11, 19)
    arr_index = 0
  elsif n % 10 == 1
    arr_index = 1
  elsif (2..4).cover?(n % 10)
    arr_index = 2
  else
    arr_index = 0
  end
  
  p "#{n} #{arr_computers[arr_index]}"
end