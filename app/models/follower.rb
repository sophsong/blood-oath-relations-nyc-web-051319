class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def oaths
    BloodOath.all.select do |cult|
      cult.follower.name == self.name
    end
  end

  def join_cult(cult)
    BloodOath.new(self, cult)
  end

  def self.of_a_certain_age(age)
    self.all.select do |follower|
      follower.age >= age
    end
  end

  def my_cults_slogans
    self.oaths.each do |cult|
      puts cult.cult.slogan
    end
  end

  def self.most_active
    cult_counts = []
    BloodOath.all.each do |follower|
      cult_counts << follower.cults.count
    end
    self.all.find do |follower|
      cult_counts.max == follower.cults.count
      end
    end
  end
