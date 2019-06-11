class Review

  attr_reader :star_rating, :content, :customer, :restaurant
  @@all = []

  def intialize(star_rating, content, customer, restaurant)
    @star_rating = star_rating
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end
