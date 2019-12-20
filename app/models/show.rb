class Show < ActiveRecord::Base
    def self.highest_rating
        self.maximum("rating")
    end

    # - `most_popular_show`: this method should return the show with the highest
    # rating. _hint_: use the `highest_rating` method as a helper method.
    def self.most_popular_show
        Show.find_by rating: self.highest_rating
    end

    # - `lowest_rating`: returns the lowest value in the ratings column.
    def self.lowest_rating
        self.minimum("rating")
    end

    # - `least_popular_show`: returns the show with the lowest rating.
    def self.least_popular_show
        Show.find_by rating: self.lowest_rating
    end
    # - `ratings_sum`: returns the sum of all of the ratings.
    def self.ratings_sum
        Show.sum :rating
    end
    # - `popular_shows`: returns an array of all of the shows that have a rating
    # greater than `5`. _hint_: use the `where` Active Record method.
    def self.popular_shows
        Show.where "rating > 5"
    end
    # - `shows_by_alphabetical_order`: returns an array of all of the shows sorted by
    # alphabetical order according to their names. _hint_: use the `order` Active
    # Record method.
    def self.shows_by_alphabetical_order
        Show.order name: :asc
    end
end