def line(array)
    if !array.empty?
      string = "The line is currently:"
      i = 0
      while i < array.length do
        string << " #{i+1}. #{array[i]}"
        i += 1
      end
      puts string
    else
      puts 'The line is currently empty.'
    end
end

def take_a_number(array, name)
  array.push(name)
  index = array.index(name) + 1
  puts "Welcome, #{name}. You are number #{index} in line."
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift()
  end
end
