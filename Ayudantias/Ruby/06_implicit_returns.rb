# Explicit return function definition
def addition(first, second)
    # Return the sum
    return first + second
end
  
# Implicit return function definition
def implicit_addition(first, second)
  # Compute the sum as the last statement and DON'T return it
  first + second
end
  
# Log both results
puts addition 2, 3           # It obviously returns
puts implicit_addition 2, 3  # What happens with this function call?
