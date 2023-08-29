require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

=begin
Exercise 3: Delete the third store
  Load the third store (into @store3) as you did the other two before.
  Using Active Record's destroy method, delete the store from the database.
  Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)
=end

puts "Exercise 3"
puts "----------"

# Load the third store from the database
@store3 = Store.find(3)

# Delete the third store from the database
@store3.destroy

# Output the count of stores to verify the deletion
puts "Number of stores after deletion: #{Store.count}"