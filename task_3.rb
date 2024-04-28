=begin
Написать функцию/метод,
 которая возвращает массив простых чисел в диапазоне 
  (2 числа - минимальное и максимальное) заданных чисел.
   Например,
    на вход переданы 2 числа: от 11 до 20  
     (диапазон считается включая граничные значения).
      На выходе программа должна выдать
       [11, 13 , 17, 19]
=end

def task_3(min, max)

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