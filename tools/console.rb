require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("betty", "stringer")
c2 = Customer.new("tina", "smith")
c3 = Customer.new("fred", "brown")

rest1 = Restaurant.new("spagetti house")
rest2 = Restaurant.new("pizza hut")
rest3 = Restaurant.new("noodle city")

rev1 = Review.new(c1, rest3, "it was ok", 2)
rev2 = Review.new(c3, rest2, "could be better", 3)
rev3 = Review.new(c2, rest1, "best spag bol of my life", 5)
rev4 = Review.new(c3, rest1, "not the worst", 2)
rev5 = Review.new(c2, rest2, "meh", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
