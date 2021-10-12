require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { |mens_store| puts mens_store.name + " " + mens_store.annual_revenue.to_s }
@womes_stores = Store.where(womens_apparel: true, annual_revenue: 0..1000000)
@mens_stores.each { |womens_store| puts womens_store.name + " " + womens_store.annual_revenue.to_s }