require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "What will this store be named?"
print "> "
newstore = $stdin.gets.chomp

@newStore = Store.create(name: newstore, annual_revenue: 100000)

p @newStore.errors.details[:name]
p @newStore.errors.details[:annual_revenue]
