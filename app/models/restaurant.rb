class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # returns an array of all restaurants
      @@all
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select{|r| r.restaurant == self}
  end

  def customers
    # Returns a unique list of all customers who have reviewed a particular restaurant.
    reviews.collect(&:customer).uniq
  end


  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    (reviews.sum(&:rating) / reviews.length).to_f
  end

  def content_length
    # helper method for the following longest review method
    content_hash = {}
    reviews.collect{|f| content_hash[f] = f.content.length}
    content_hash
  end

  def longest_review
    # returns the longest review content for a given restaurant
    content_length.max_by{|rc,s| s }[0]
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
       @@all.select {|c| c.name == name}.first
  end


end
