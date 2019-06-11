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
    @@all
  end

  def add_review(restaurant, content, star_rating)
    Review.new(self, restaurant, content, star_rating)
  end

  def num_reviews
    Customer.all.map {|customer| customer.review}.length
  end

  def restaurants
    Customer.num_reviews.uniq
  end

  def self.find_by_name(name)
    all.detect {|customer| customer.name == name}
  end

  def self.find_all_by_first_name
    all.select {|customer| customer.name == name}
  end
end
