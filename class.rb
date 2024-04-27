=begin
Задача 1.
 Разработайте функцию,
  которая принимает целое число в качестве аргумента и возвращает строку,
   содержащую это число и слово "компьютер" в нужном склонении по падежам в зависимости от числа.
    Например, при вводе числа 25 функция должна возвращать "25 компьютеров",
     для числа 41 — "41 компьютер",
      а для числа 1048 — "1048 компьютеров".

Задача 2
.Написать функцию/метод,
  которая на вход получает массив положительных целых чисел произвольной длины. 
   Например [42, 12, 18].
    На выходе возвращает массив чисел,
     которые являются общими делителями для всех указанных числе.
      В примере это будет [2, 3, 6].

Задача 3
.Написать функцию/метод,
  которая возвращает массив простых чисел в диапазоне (2 числа - минимальное и максимальное) заданных чисел.
   Например, на вход переданы 2 числа: от 11 до 20  (диапазон считается включая граничные значения).
    На выходе программа должна выдать [11, 13 , 17, 19]

Задача 4
 Написать метод,
  который в консоль выводит таблицу умножения.
   На вход метод получает число, до которого выводит таблицу умножения.
    В консоли должна появиться таблица.
     Например, если на вход пришло число 5,
      то получим:
=end

class  TestTasks

	def self.task_1(n)
		if n >= 0
			if n == 0
				puts "#{n.to_s} - компьютеров" 

			elsif n % 100 >= 10 && n % 100 <= 20
				puts "#{n.to_s} - компьютеров"

			elsif n % 10 == 1 
				puts "#{n.to_s} - компьютер"

			elsif n % 10 >= 2 && n % 10 <= 4
				puts "#{n.to_s} - компьютера"
			else
				puts "#{n.to_s} - компьютеров" 	
			end
		end
	end

  def self.task_4(num)

  	puts "   #{(1..num).to_a.join('  ')}"	
 		
  	(1..num).each do |i| 
    	row = [i]
    	(1..num).each do |j|
      	row << i * j
    	end
    		puts row.join("  ")
  	end
end

end

TestTasks .task_1(25)
TestTasks .task_1(1)
TestTasks .task_1(41)
TestTasks .task_1(3)
TestTasks .task_1(32)
TestTasks .task_1(1048)

puts '---------------------------------------'

TestTasks .task_4(5)

puts '---------------------------------------'
