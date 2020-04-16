class Clubhouse < ActiveRecord::Base
    has_many :records
    has_many :members, through: :records


        def self.display_bronze
            puts  <<-BRONZE
                Here are the Bronze Clubs Available to you!

                --------------Bronze Clubs------------------

                                                                                                                
                BRONZE
            bronze_club_array = Clubhouse.all.select do |clubhouse|
                clubhouse.tier == "bronze"

            end
            bronze_club_name_array = bronze_club_array.map do |display_clubhouse|
            display_clubhouse.name
            end 
            puts bronze_club_name_array
        end

    def self.display_bronze
        puts  <<-BRONZE
            Here are the Bronze Clubs Available to you!

            ██████╗ ██████╗  ██████╗ ███╗   ██╗███████╗███████╗     ██████╗██╗     ██╗   ██╗██████╗ ███████╗
            ██╔══██╗██╔══██╗██╔═══██╗████╗  ██║╚══███╔╝██╔════╝    ██╔════╝██║     ██║   ██║██╔══██╗██╔════╝
            ██████╔╝██████╔╝██║   ██║██╔██╗ ██║  ███╔╝ █████╗      ██║     ██║     ██║   ██║██████╔╝███████╗
            ██╔══██╗██╔══██╗██║   ██║██║╚██╗██║ ███╔╝  ██╔══╝      ██║     ██║     ██║   ██║██╔══██╗╚════██║
            ██████╔╝██║  ██║╚██████╔╝██║ ╚████║███████╗███████╗    ╚██████╗███████╗╚██████╔╝██████╔╝███████║
            ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝     ╚═════╝╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝
                                                                                                            
        BRONZE

        bronze_club_array = Clubhouse.all.select do |clubhouse|
            clubhouse.tier == "bronze"

        end
    end


        def self.display_silver
            puts <<-SILVER 
            here are the Silver Clubs Available to you!"

            --------------Silver Clubs------------------

        
            

            SILVER
            silver_club_array = Clubhouse.all.select do |clubhouse|
                clubhouse.tier == "silver"

            end
            silver_club_name_array = silver_club_array.map do |display_clubhouse|
            display_clubhouse.name
            end 
            puts silver_club_name_array
        end

        def self.display_gold

            puts <<-GOLD 
            here are the gold Clubs Available to you!"

            --------------Gold Clubs------------------


                GOLD
            gold_club_array = Clubhouse.all.select do |clubhouse|
            clubhouse.tier == "gold"
        
            end
            gold_club_name_array = gold_club_array.map do |display_clubhouse|
            display_clubhouse.name
            end 
            puts gold_club_name_array
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
