
require "active_support/all"
require "pry-byebug"

unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample
pp some_random_input
if some_random_input.class == String
  pp some_random_input.downcase
elsif some_random_input.class == Date
  pp some_random_input.day.downcase
elsif some_random_input == Integer
  if some_random_input.odd?
    pp '#{some_random_input} is odd'
  else
    pp '#{some_random_input} is even'
  end
elsif some_random_input.class == Symbol
  pp some_random_input.downcase
elsif some_random_input == nil
  pp 'no object provided'
end
