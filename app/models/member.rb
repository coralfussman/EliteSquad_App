require 'pry'
class Member < ActiveRecord::Base
    belongs_to :record
    has_many :clubhouse, through: :record

    def self.get_user_age
        puts "Please enter your age."
        @age = gets.chomp
        @age = @age.to_i
        if @age >= 21
            puts "Your account has been created."
        else
            puts "You must be above 21 to use this app."
        end 
        @age
    end

    

end