numbers = [-2, -1, 0, 1, 2]

# Control flow in ruby ​​works very similar to python,
# only we use "eslif" instead of "elif"
numbers.each do |x|
  if x < 0
    puts "El número #{x} es negativo"
  elsif x > 0
    puts "El número #{x} es positivo"
  else
    puts "El número #{x} no es positivo ni negativo"
  end
end

# When we want to use the logic of an "if not", we use "unless".
# The following two operations are equivalent
numbers.each do |x|
  if not x <= 0
    puts x
  end
end

numbers.each do |x|
  unless x <= 0
    puts x
  end
end


