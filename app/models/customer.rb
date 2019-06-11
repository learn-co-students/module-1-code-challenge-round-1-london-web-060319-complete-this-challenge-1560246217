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
    new_review = Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    reviews.count
  end

  

end
