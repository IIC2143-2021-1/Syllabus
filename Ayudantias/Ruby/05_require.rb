# Require a file from the directory
require_relative "env"

# Require a third party library (`gem install httparty` first)
require "httparty"

# Log variable from the env.rb file
puts CONST_1
puts $var_3

# Use a method from the third party library
response = HTTParty.get("https://jsonplaceholder.typicode.com/todos/1")

# Log the response from the API call
puts response.body
