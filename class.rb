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

	def self.task_2(numbers = [])
		min_num = numbers.min # наименьшее число в массиве
		
	  # Создаем массив всех возможных делителей наименьшего числа
    divisors = (2..min_num).to_a	

    # Фильтруем массив делителей, оставляя только те,
    # которые являются общими для всех чисел
    actual_divisors = divisors.select do |divisor|
    	numbers.all? { |num| num % divisor == 0 }
  	end
  	print actual_divisors
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

TestTasks.task_1(25)
TestTasks.task_1(1)
TestTasks.task_1(41)
TestTasks.task_1(3)
TestTasks.task_1(32)
TestTasks.task_1(1048)

puts '---------------------------------------'

TestTasks.task_2([42,12,18])

puts '---------------------------------------'

TestTasks.task_4(5)

puts '---------------------------------------'
