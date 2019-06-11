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

  def add_review(restaurant, content, rating)
    Review.new(self,restaurant, content, rating)
  end

  def num_reviews
    Review.all.select{|review| review.customer == self}.count
  end

  def restaurants
    Review.all.select{|review| review.restaurant == self}.uniq
  end ###fix this##



end
