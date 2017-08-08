def square_array(array)
  v = []
  array.each{|a| v << a ** 2}
  return v
end

numbers = [1, 3, 6]

square_array(numbers)
