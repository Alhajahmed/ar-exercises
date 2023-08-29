require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

=begin
Exercise 5: Calculations
Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
On the next line, also output the average annual revenue for all stores.
Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
=end

puts "Exercise 5"
puts "----------"

# Calculate total revenue for all stores
total_revenue = Store.sum(:annual_revenue)

# Calculate average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)

# Count the number of stores with $1M or more in annual sales
high_revenue_stores_count = Store.where("annual_revenue >= ?", 1000000).count

puts "Total Company Revenue: $#{total_revenue}"
puts "Average Annual Revenue: $#{average_revenue}"
puts "Number of High Revenue Stores: #{high_revenue_stores_count}"