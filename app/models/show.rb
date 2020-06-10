class Show < ActiveRecord::Base
  # t.string :name
  # t.string :network
  # t.string :day
  # t.integer :rating

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = #{self.highest_rating}").first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.where("rating = #{self.lowest_rating}").first
  end
end
