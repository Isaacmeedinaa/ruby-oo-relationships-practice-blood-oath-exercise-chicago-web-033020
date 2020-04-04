# some code goes here
require_relative 'cult.rb'
require_relative "bloodoath.rb"

class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        belonging_cults = []

        Cult.all.select do |cult|
            if cult.cult_followers_list.include?(self)
                belonging_cults << cult.name
                p "This follower belongs to the cult, #{cult.name} "
            else
                p "This follower is not in any cults or does not belong in #{cult.name}"
            end
        end
        belonging_cults
    end

    def join_cult(cult)
        cult.cult_followers_list << (self)
        cult.cult_followers_list
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(follower_age)
        list_of_followers_age = []

        self.all.select do |follower|
            if follower_age <= follower.age
                list_of_followers_age << follower
            else
                p "false"
            end
        end
        list_of_followers_age
    end
end