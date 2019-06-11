class Review

    attr_reader :customer, :restaurant, :content
    attr_accessor :rating
    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end
  
    def self.all
        @@all
    end

    def rating=(num)
        num = num.to_i
        # binding.pry
        if num > 5
            @rating = 5
        elsif num < 1
            @rating = 1
        end
        return @rating
        binding.pry

    end



end

