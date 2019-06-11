class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    # should return all of the customer instances
    @@all
  end

  def add_review(restaurant, content, rating)
    # given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    Review.new(self, restaurant, content, rating)
  end

  def customer_data
    Review.all.select{|r| r.customer == self} 
  end

  def num_reviews
    # Returns the total number of reviews that a customer has authored
    customer_data.length
  end

  def restaurants
    # Returns a unique array of all restaurants a customer has reviewed
    customer_data.collect(&:restaurant).uniq
  end

  def self.find_by_name(name)
    # given a string of a full name, returns the first customer whose full name matches
       @@all.select {|c| c.full_name == name}.first
  end

  def self.find_all_by_first_name(name)
    # given a string of a first name, returns an array containing all customers with that first name
    @@all.select{|c| c.first_name == name}
  end

  def self.all_names
    @@all.collect{|c| c.full_name}
  end

end
