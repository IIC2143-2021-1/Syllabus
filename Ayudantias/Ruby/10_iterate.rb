# Define a VERY realistic weekday list
week = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]

# Iter over the week and print each day
week.each do |day|      # for day in week -> python equivalent
  puts day              #     print(day)
end

puts "\n"  # Separator

(0..6).each do |i| # Both numbers (0 and 6) are included!
  puts week[i]     # Access the i element of week
end

puts "\n"  # Separator

week.each_with_index do |day, index|  # Remember Python's enumerate method?
  puts "#{index}: #{day}"
end

index = 0
while index < week.length
  puts week[index]
  index += 1
end
