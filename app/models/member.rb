require 'pry'
class Member < ActiveRecord::Base
    belongs_to :record
    has_many :clubhouse, through: :record
    
    def self.greeting_menu

        puts "Hi, welcome to the Elite Squad App."
        puts "Would you like to sign in or create a new profile?"
        puts " ____________________________________________________"
        puts "|    Sign in    |    Create Profile    |    Exit    |"
        puts "|_______________|______________________|____________|"
        
        input = gets.chomp
        if input.downcase == "sign in"
            puts "Please enter your username."
            username = gets.chomp
            member_info = Member.find_by(name: username)
            $id = member_info.id
            puts "Welcome, #{member_info.name}."
        elsif input.downcase == "create profile"
            puts "Create profile."
        elsif input.downcase == "exit"
            puts "Thank you for using the Elite Squad App."
            puts "We hope to see you soon."
        end
    end
    
    def self.get_username

    end

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