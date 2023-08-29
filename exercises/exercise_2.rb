require_relative '../setup'
require_relative './exercise_1'

=begin
Exercise 2: Update the first store
  Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
  Load the second store from the database and assign it to @store2.
  Update the first store (@store1) instance in the database. (Change its name or something.)
=end

puts "Exercise 2"
puts "----------"

# Load the first and second stores from the database
@store1 = Store.find(1)
@store2 = Store.find(2)

# Update the first store's name
@store1.update(name: "New Burnaby Store Name")

puts "Updated store name: #{@store1.name}"