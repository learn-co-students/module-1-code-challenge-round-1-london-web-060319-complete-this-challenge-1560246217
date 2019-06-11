class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Review.all.select{|review| review.customer == self}.uniq
  end #fix this

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def average_star_rating
    Review.all.sum{|review| review.restaurant}/Review.all.count
  end #fix this
end
