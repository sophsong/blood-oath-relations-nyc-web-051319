require 'pry'

class Cult
  attr_accessor :name, :location, :founding_year, :slogan, :followers

  @@all= []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year= founding_year
    @slogan = slogan
    @followers = []
    @@all << self
  end

  def average_age
    total_age = 0
    self.followers.each do |follower|
      total_age += follower.age
    end
    avg_age = total_age.to_f / cult_population
    avg_age
  end

  def my_followers_mottos
    self.followers.each do |follower|
      puts follower.life_motto
    end
  end

  def self.least_popular
    follower_counts = []
    self.all.each do |cult|
      follower_counts << cult.cult_population
    end
    self.all.find do |cult|
      follower_counts.min == cult.cult_population
    end
  end

  def self.most_common_location
      cult_locations= []
      cult_num_of_each = {}
      self.all.each do |cult|
        cult_locations << cult.location
      end
      self.all.each do |cult|
        count = cult_locations.count(cult.location)
        cult_num_of_each[cult.location] = count
      end
      cult_num_of_each.key(cult_num_of_each.values.max)
  end

  def recruit_follower(follower)
    @followers << follower
    follower.cults << self
  end

  def cult_population
    @followers.count
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    self.all.find do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(founding_year)
    self.all.find do |cult|
      cult.founding_year == founding_year
    end
  end

end
