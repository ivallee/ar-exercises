require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Bob", last_name: "Loblaw", hourly_rate: 40)
@store1.employees.create(first_name: "Tim", last_name: "Blimblaw", hourly_rate: 52)
@store1.employees.create(first_name: "George", last_name: "Forelorge", hourly_rate: 160)
@store1.employees.create(first_name: "Fred", last_name: "Bedson", hourly_rate: 165)

@store2.employees.create(first_name: "Florb", last_name: "Gorbtorb", hourly_rate: 57)
@store2.employees.create(first_name: "John", last_name: "Flonflon", hourly_rate: 60)
@store2.employees.create(first_name: "Fig", last_name: "Digpig", hourly_rate: 75)

