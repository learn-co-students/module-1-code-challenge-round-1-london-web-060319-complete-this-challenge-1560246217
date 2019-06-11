class Review

    @@all = []

    attr_reader :customer, :restaurant, :rating, :content

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        # returns all of the reviews
        @@all
    end


end

