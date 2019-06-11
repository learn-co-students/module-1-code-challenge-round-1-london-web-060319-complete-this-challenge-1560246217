require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Anne Marie", "OSullivan")
c2 = Customer.new("Chris", "Russo")
c3 = Customer.new("Corinne", "ORourke")

r1 = Restaurant.new("FX Buckley")
r2 = Restaurant.new("Delahunt")
r3 = Restaurant.new("Belle")

review1 = Review.new(4, "Great restaurant", c1, r1)
review2 = Review.new(3, "Ok restaurant", c2, r2)
review3 = Review.new(5, "Best restaurant ever!", c3, r3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
