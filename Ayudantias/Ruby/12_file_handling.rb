  
require "csv"  # Import csv library

# Open file and print it line by line
File.open("files/read.txt", "r").each do |line|
  puts line
end

# Print to file!
File.open("files/write.txt", "w") do |f|
  f.puts "Mi primera línea"
  f.puts "Esto se escribe en otra línea!"
end

# Igual que en python, si el archivo no existe, lo crea

# File.open("files/write.txt", "w") {|file| file.puts "Otra forma de escribir en archivos"}

# Append string to a file already written
File.open("files/write.txt", "a") do |f|
  f.puts "Hola, soy yo de nuevo."
end

# Open a csv file with the module CSV
csv_file = CSV.read("files/read.csv")
puts csv_file
print csv_file
# Note that csv_file is a bidimensional array.

# CSV.open 'files/written.csv', 'w' do |csv|
# 	csv << ["Hola","Mundo"]
# 	csv << ["Chao","mundo"]
# end