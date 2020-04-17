class Clubhouse < ActiveRecord::Base
    has_many :records
    has_many :members, through: :records




    def self.check_clubhouse

        
            user_choice = gets.chomp
            if Clubhouse.find_by(name: user_choice)
                new_count = Member.set_user_info.visits
                new_count += 1
                Member.set_user_info.update(visits: new_count)

            puts "Great! You are checked in"

            else puts "Sorry, invalid choice, please choose from the previous options"
            end
        
    end

    def self.increment_tier
        if  Member.set_user_info.visits <= 3
            Member.set_user_info.tier = "bronze"

        elsif  Member.set_user_info.visits >= 4 && Member.set_user_info.visits <= 6
            Member.set_user_info.tier = "silver"

        elsif  Member.set_user_info.visits >= 7 
            Member.set_user_info.tier = "gold"

         end
    end


        def self.clubhouse_member_options
        
            user_input = gets.chomp
            
            member = Member.all.find do |m|
                m.name.downcase == user_input.downcase
            end
        end
 
        # matching_clubs = member.clubhouses_with_members_tier # => [<#clubhouse1>,<#cliubhouse2>]

        # matching_clubs.each do |club|
        #     puts club.name
        # end

        # Clubhouse.all.select do |c|
        #     c.tier == member.tier
        # end

        
end
