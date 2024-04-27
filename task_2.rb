def task_2(numbers = [])
	min_num = numbers.min # наименьшее число в массиве
		
	# Создаем массив всех возможных делителей наименьшего числа
  divisors = (2..min_num).to_a	

  # Фильтруем массив делителей, оставляя только те,
  # которые являются общими для всех чисел
  actual_divisors = divisors.select do |divisor|
    numbers.all? {|num| num % divisor == 0}
  end
  	print actual_divisors
end