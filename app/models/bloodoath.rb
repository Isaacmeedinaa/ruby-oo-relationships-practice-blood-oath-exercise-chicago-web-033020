# some code goes here
require_relative "cult.rb"
require_relative "follower.rb"

class BloodOath

    attr_accessor :cult, :follower

    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @@all << self.initiation_date
    end

    def initiation_date
        p "This Blood Oath between #{cult.name} and #{follower.name} was done on #{Time.now.year}-#{Time.now.month}-#{Time.now.day}."
    end

    def self.all
        @@all
    end
end