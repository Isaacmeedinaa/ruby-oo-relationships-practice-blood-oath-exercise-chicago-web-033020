# some code goes here
require_relative "follower.rb"
require_relative "bloodoath.rb"

class Cult

    attr_accessor :name, :location, :founding_year, :slogan, :cult_followers_list

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @cult_followers_list = []
        @@all << self
    end

    def recruit_follower(follower)
        self.cult_followers_list << follower
        self.cult_followers_list
    end

    def cult_population
        p self.cult_followers_list.count
    end

    def self.all
        @@all
    end

    def self.find_by_name(cult_name)
        list_of_cult_names = []
        
        self.all.select do |cult|
            if cult.name == cult_name
                list_of_cult_names << cult
            else
                p "No matching cult(s) with that name!"
            end
        end
        list_of_cult_names
    end

    def self.find_by_location(cult_location)
        list_of_cult_locations = []

        self.all.select do |cult|
            if cult.location == cult_location
                list_of_cult_locations << cult
            else
                p "No matching cult(s) with that location!"
            end
        end
        list_of_cult_locations
    end

    def self.find_by_founding_year(cult_founding_year)
        list_of_cult_founding_years = []

        self.all.select do |cult|
            if cult.founding_year == cult_founding_year
                list_of_cult_founding_years << cult
            else
                p "No matching cult(s) with that founding year!"
            end
        end
        list_of_cult_founding_years
    end
end