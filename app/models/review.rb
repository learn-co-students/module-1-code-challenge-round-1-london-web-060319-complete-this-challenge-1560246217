class Review

  attr_accessor :rating
  attr_reader :customer, :restaurant
  @@all = []

  def intialize(rating, customer, restaurant)
    @rating = rating
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

end
