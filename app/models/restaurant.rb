class Restaurant
  attr_reader :name, :customers
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    @@all.select {|restaurant| restaurant.review == self}
  end

  def average_star_rating

  end 

end
