require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.first()
@store2 = Store.second()
@store1.update(name: "Coquitlam")
p @store1