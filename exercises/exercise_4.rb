require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

=begin
Exercise 4: Loading a subset of stores
Borrowing and modifying the code from Exercise one, create 3 more stores:
  Surrey (annual_revenue of 224000, carries women's apparel only)
  Whistler (annual_revenue of 1900000 carries men's apparel only)
  Yaletown (annual_revenue of 430000 carries men's and women's apparel)
Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
Loop through each of these stores and output their name and annual revenue on each line.
Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
=end

puts "Exercise 4"
puts "----------"

# Create 3 more stores
Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

puts "Fetching and outputting stores ..."

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output information for each men's store
puts "Men's Stores:"
@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and generate less than $1M in annual revenue
@womens_stores_low_revenue = Store.where(womens_apparel: true, annual_revenue: 0..999999)

# Output information for each women's store with low annual revenue
puts "Women's Stores with Low Revenue:"
@womens_stores_low_revenue.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end