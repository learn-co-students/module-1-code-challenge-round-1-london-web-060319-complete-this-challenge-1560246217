require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Fred", "Bloggs")
c2 = Customer.new("Fred", "Vloggs")
c3 = Customer.new("Joe", "Spaghetti")


rest1 = Restaurant.new("Scaramuccis")
rest2 = Restaurant.new("Pizza Excess")
rest3 = Restaurant.new("Sad Graham's")

rev1 = Review.new(c1, rest1, "it's fine", 5)
rev2 = Review.new(c2, rest1, "I like", 3)
rev3 = Review.new(c2, rest2, "nice haddock", 4)
rev4 = Review.new(c3, rest3, "pretty depressing atmosphere", 2)

binding.pry







0 #leave this here to ensure binding.pry isn't the last line