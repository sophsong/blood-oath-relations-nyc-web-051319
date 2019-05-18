#the line between the two
class BloodOath
  attr_accessor :cult, :follower, :date_initiated

  @@all = []

  def initialize(follower,cult)
    @follower = follower
    @cult = cult
    @date_initiated = initiation_date
    @@all << self
  end

  def initiation_date
    time = Time.now.strftime("%Y/%m/%d")
    time
  end

  def self.all
    @@all
  end

  def self.first_oath
    self.all.find do |follower|
    end
  end
end
