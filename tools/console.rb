require_relative '../config/environment.rb'

#ruby tools/console.rb
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

red = Cult.new("Red", "NYC", 2009, "Hi")
blue = Cult.new("Blue", "NYC", 2013, "Hi")
yellow = Cult.new("Yellow", "NYC", 2008, "Hi")
green = Cult.new("Green", "LA", 2009, "Yo")

paul = Follower.new("Paul", 12, "Yes!")
david = Follower.new("David", 70, "No!")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
