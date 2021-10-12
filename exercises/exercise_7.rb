require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: 40..200
  validates_associated :store
end

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, inclusion: 0..Float::INFINITY
end 
puts "Give a store name"
store_name = gets.chomp
p Store.create(name: store_name)