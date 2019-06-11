require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c = Customer.new("Bob", "Ross")
c1 = Customer.new("Jack", "McFarland")
c2 = Customer.new("Karen", "Walker")

r = Restaurant.new("Bistro Boh")
r1 = Restaurant.new("Je suis posh")
r2 = Restaurant.new("Mavadavialcu")

re = Review.new(c, r, 7.0, "Dreadful at its fullest")
re1 = Review.new(c1, r1, 0, "Beautiful")
re2 = Review.new(c2, r2, 10, "Amazing")

re12 = c1.add_review(r2, "Out of this world, in a bad way", -3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line