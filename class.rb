class  TestTasks

	def self.task_1(n)
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

	def self.task_2(numbers = [])
		min_num = numbers.min 
		
    divisors = (2..min_num).to_a	

    actual_divisors = divisors.select do |divisor|
    	numbers.all? { |num| num % divisor == 0 }
  	end
  	p actual_divisors
	end

	def self.task_3(min, max)
    arr = []
  (min..max).each do |num|
    is_prime = true
    (2..(Math.sqrt(num).to_i)).each do |i|
      if num % i == 0
        is_prime = false
        break
      end
    end
    arr << num if is_prime && num > 1
  end
    p arr
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
TestTasks.task_3(11,20)

puts '---------------------------------------'
TestTasks.task_4(5)

puts '---------------------------------------'
