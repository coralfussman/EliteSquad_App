require 'pry'
class Member < ActiveRecord::Base
    belongs_to :record
    has_many :clubhouses, through: :record

###################################SIGN IN/CREATE PROFILE METHODS#######################################

    def self.greeting_menu
        Interface.greeting
        input = gets.chomp
        if input.downcase == "sign in"
            Interface.sign_in_username_prompt
        elsif input.downcase == "create profile"
            Member.create_profile
        elsif input.downcase == "exit"
            Interface.thank_you_exit
        end
    end
    
    def self.check_username
        loop do 
            user_input = gets.chomp
            if !Member.find_by(name: user_input)
                if user_input.downcase == 'create profile'
                    Member.create_profile
                    break
                end
            Interface.unrecognized_username
            else
                member = Member.find_by(name:user_input)
                $user_id = member.id
                break
            end
        end
    end
    
    def self.get_user_info
        Member.find_by(id: $user_id)
    end

    def self.get_username
        Member.get_user_info.name
    end

    def self.get_id
        Member.get_user_info.id
    end

    def self.get_tier
        Member.get_user_info.tier
    end

    def self.get_visit_count
        Member.get_user_info.visits
    end
    

    def self.greeting_menu
        Interface.greeting
        input = gets.chomp
        if input.downcase == "sign in"
            Interface.sign_in_username_prompt
        elsif input.downcase == "create profile"
            Member.create_profile
        elsif input.downcase == "exit"
            Interface.thank_you_exit
        end
    end

    def self.clubhouses_with_members_tier
       clubhouses = Clubhouse.all.select do |club|
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
            
            
            club.tier == 'bronze'
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
            Interface.under_age
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
        member = Member.create(name: name, age: age, tier: "bronze")
        $user_id = member.id
    end 

    def self.delete_profile
        loop do
            input = gets.chomp
            if input.downcase == "DELETE"
                obj = Member.get_user_info
                obj.destroy
                Interface.thank_you_exit
                break
            elsif input.downcase == "GO BACK"
                #homepage method
                break
            else
                puts "Unrecognized entry."
                puts "Please enter 'DELETE' or 'GO BACK'."
            end
        end
    end

########################################################################################################
########################################USER DATA ACCESS METHODS########################################

    def self.get_user_info
        Member.find_by(id: $user_id)
    end

    def self.get_username
        Member.get_user_info.name
    end

    def self.get_id
        Member.get_user_info.id
    end

    def self.get_tier
        Member.get_user_info.tier
    end

    def self.get_visit_count
        Member.get_user_info.visits
    end
########################################################################################################
   
end