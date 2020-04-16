require 'pry'
class Member < ActiveRecord::Base
    belongs_to :record
    has_many :clubhouse, through: :record
    
    def self.greeting
        puts <<-Greeting
        Welcome to the Elite Squad App.          
        Would you like to sign in or create a new profile? 
        ____________________________________________________
        |    Sign in    |    Create Profile    |    Exit    |
        |_______________|______________________|____________|
        Greeting
    end

    def self.check_username
        loop do 
            user_input = gets.chomp
            if !Member.find_by(name: user_input)
                if user_input.downcase == 'create profile'
                    Member.create_profile
                    break
                end
                puts "Username not recognized. Please try again."
                puts "Enter 'Create Profile' if you are trying to make a new profile. " 
            else
                member = Member.find_by(name:user_input)
                $user_id = member.id
                break
            end
        end
    end
    
    def self.get_username
       (Member.find_by(id: $user_id)).name
    end

    def self.get_id
        $user_id
    end

    def self.thank_you_exit
        puts <<-thanks
             ___________________________________________ 
            |  Thank you for using the Elite Squad App. |
            |         We hope to see you soon!          |
            |___________________________________________|
        thanks
    end

    def self.greeting_menu
        Member.greeting
        input = gets.chomp
        if input.downcase == "sign in"
            puts "Please enter your username."
            Member.check_username
            puts "Welcome, #{Member.get_username}."
        elsif input.downcase == "create profile"
            Member.create_profile
        elsif input.downcase == "exit"
            Member.thank_you_exit
        end
    end

    def self.clubhouses_with_members_tier
        Clubhouse.all.select do |c|
            # tiers 'gold' > 'silver' > 'bronze'
            if self.tier == 'gold'
                puts "here are all the clubhouses you have access to!"
            # self.display_bronze
            # self.display_silver
            # puts "Plus these Premium Clubs"
            # self.display_gold

            elsif self.tier == 'silver'
                # self.display_bronze
                # self.display_silver
            else
            
            
            c.tier == self.tier
            end
        end
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

    def self.get_all_usernames
        Member.all.map do |x|
            x.name 
        end
    end

    def self.create_username
        puts "Please create a username."

            name = gets.chomp
            until !Member.get_all_usernames.include?(name)
                puts "This username is already taken."
                puts "Please enter a different username."
                name = gets.chomp
            end
        name
    end
    
    def self.create_profile
        name = Member.create_username
        age = Member.get_user_age
        Member.create(name: name, age: age, tier: "bronze")
    end 

end