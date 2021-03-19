  
# Define a hash like in Python (dictionaries are called hashes in ruby)
hash = { "uno": 1, "dos": 2, "tres": 3 }

# Define a hash using symbols and arrows
symbol_hash = { :uno => 1, :dos => 2, :tres => 3 }

# Log hashes generated... They are IDENTICAL!
puts hash
puts symbol_hash

# ¿¿WHAAAAAAT?? Strings get transformed to symbols when used inside
# the hash's definition...
puts symbol_hash[:uno]
puts hash[:uno]

# Add some elements...
hash["cuatro"] = 4
hash[:cuatro] = 5

# Now, the string does not get converted to a symbol!
puts hash

# ProTip: when a hash is the last argument given to a method,
# {} brackets can be omitted inside the method call. For example:

puts "uno": 1, "dos": 2, "tres": 3

# Is the same as saying:

puts({"uno": 1, "dos": 2, "tres": 3})

# Only that we omit the () parentheses (because, in ruby, that can be
# done, as we already saw) and we also omit the {} brackets (because
# the hash is the last element given to the method)

# WHAAAAAAAT????

def galletas azucar,manteca
	puts azucar
	puts manteca
end

galletas "hello","me encatas":2,"ss":3