require_relative '../config/environment.rb'
require 'pp'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Cult object instances creations
cult_of_rick_morty = Cult.new("Cult of Rick and Morty", "Dimension #340", 2010, "Join the R&M Cult")
cult_of_the_bean = Cult.new("Cult of the Bean", "Portland, Oregon", 2020, "Join the Bean")
gamer_cult = Cult.new("Gamer Cult", "Chicago, IL", 2018, "Game or Die")

# Cult object method instances calls (getter)
puts "Here are the Cult's information:\n↴↴↴↴↴↴↴↴↴"
p cult_of_rick_morty.name
p cult_of_rick_morty.location
p cult_of_rick_morty.founding_year
p cult_of_rick_morty.slogan

# Follower object instances creations
isaac = Follower.new("Isaac", 18, "Some random life motto")
alex = Follower.new("Alex", 22, "I love Bean")
mico = Follower.new("Mico", 11, "Hop on Fortnite")
bean = Follower.new("Bean", 0, "I WANT BANANA JUICE!")

# Cult object method instances calls (getter)
puts "Here are the Follower's information:\n↴↴↴↴↴↴↴↴↴"
p isaac.name
p isaac.age
p isaac.life_motto

# Adding Follower to Cult object instances creations
cult_of_rick_morty.recruit_follower(isaac)
cult_of_the_bean.recruit_follower(alex)
gamer_cult.recruit_follower(mico)

# Displays the Followers in the Cult object instances getter
puts "Here are the Followers in the Cult:\n↴↴↴↴↴↴↴↴↴"
p cult_of_rick_morty.cult_followers_list
p cult_of_the_bean.cult_followers_list
p gamer_cult.cult_followers_list

# Displays Amount of Followers in Cult object instances caller
puts "Here are the amount of Followers in Cult:\n↴↴↴↴↴↴↴↴↴"
cult_of_rick_morty.cult_population
cult_of_the_bean.cult_population
gamer_cult.cult_population

# Displays all Cult instances created (getter)
puts "Here all the cults are displayed:\n↴↴↴↴↴↴↴↴↴"
pp Cult.all

# Displays all Cults that match the passed string(name) (getter)
puts "Here all the cults that match the passed name:\n↴↴↴↴↴↴↴↴↴"
pp Cult.find_by_name("no")

# Displays all Cults that match the passed string(location) (getter)
puts "Here all the cults that match the passed location:\n↴↴↴↴↴↴↴↴↴"
pp Cult.find_by_location("no")

# Displays all Cults that match the passed integer(founding year) (getter)
puts "Here all the cults that match the passed founding year:\n↴↴↴↴↴↴↴↴↴"
pp Cult.find_by_founding_year("no")

# Displays all Cults that this Follower belongs too (getter)
puts "Here all the cults that this follower belongs too:\n↴↴↴↴↴↴↴↴↴"
pp isaac.cults
pp alex.cults
pp mico.cults
pp bean.cults

# Adds follower to the Cult's list of followers
puts "Here a follower is added to the cult's list of followers:\n↴↴↴↴↴↴↴↴↴"
pp bean.join_cult(cult_of_the_bean)

# Displays all followers instances created (getter)
puts "Here all the followers are displayed:\n↴↴↴↴↴↴↴↴↴"
pp Follower.all

# Displays all followers that are the age or older of the number passed (getter)
puts "Here all the followers equal to or older than the age passed:\n↴↴↴↴↴↴↴↴↴"
pp Follower.of_a_certain_age(0)

# BloodOath object instances creations
puts "Here are the BloodOath's creations:\n↴↴↴↴↴↴↴↴↴"
first_blood_oath = BloodOath.new(cult_of_the_bean, bean)
second_blood_oath = BloodOath.new(cult_of_rick_morty, isaac)

# BloodOath initiation date creation (getter)
puts "Here are the BloodOath's initiation creations:\n↴↴↴↴↴↴↴↴↴"
first_blood_oath.initiation_date
second_blood_oath.initiation_date

# Displays all BloodOath's instances created (getter)
puts "Here all the BloodOath's are displayed:\n↴↴↴↴↴↴↴↴↴"
pp BloodOath.all

# binding.pry

# puts "Mwahahaha!" # just in case pry is buggy and exits
