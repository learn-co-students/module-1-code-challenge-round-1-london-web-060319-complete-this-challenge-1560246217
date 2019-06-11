class Review

  attr_accessor :customer, :restaurant, :content, :rating

  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating.to_i
    @@all << self
  end

  def self.all
    @@all
  end

end
