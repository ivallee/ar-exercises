require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@all_stores = Store.all

@total_revenue =  @all_stores.sum(:annual_revenue)
@average_revenue = @all_stores.average(:annual_revenue)

@stores_over1m = Store.where("annual_revenue >= 1000000").count

puts "Total revenue is $#{@total_revenue}"
puts "Average revenue is $#{@average_revenue} per store"
puts "There are #{@stores_over1m} stores with over $1 million in revenue"




