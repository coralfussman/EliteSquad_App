class Clubhouse < ActiveRecord::Base
    has_many :records
    has_many :members, through: :records




def check_clubhouse

    "bronze" = 0
    "silver" = 1
    "gold" = 2

        while 
            user_choice = gets.chomp do
            Clubhouse.find_by(name: user_choice)
                user_choice.downcase == visits: += 1
                    break
                end
        end
    end
    def increment_tier
        if 3.times do visits: 
            tier: +=1 
    
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
