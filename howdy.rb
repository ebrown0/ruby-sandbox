require "./goodbye.rb"
require "active_support/all"
require "pry-byebug"

f = "Your lucky number is "

l = rand(100)
byebug
pp f + l
pp "What's your name?"

their_name = "hi"

puts "Hello, " + their_name + "!"
