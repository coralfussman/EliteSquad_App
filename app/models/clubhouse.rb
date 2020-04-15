class Clubhouse < ActiveRecord::Base
    belongs_to :records
    has_many :member, through: :records





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
        bronze_array = Record.all.select do |record|
            record.tier == self

            bronze_array.map do |display_bronze|
                display_bronze.name
            end 

        end
    end
        


    def self.display_silver
        puts <<-SILVER 
        here are the Silver Clubs Available to you!"

        ███████╗██╗██╗    ██╗   ██╗███████╗██████╗      ██████╗██╗     ██╗   ██╗██████╗ ███████╗
        ██╔════╝██║██║    ██║   ██║██╔════╝██╔══██╗    ██╔════╝██║     ██║   ██║██╔══██╗██╔════╝
        ███████╗██║██║    ██║   ██║█████╗  ██████╔╝    ██║     ██║     ██║   ██║██████╔╝███████╗
        ╚════██║██║██║    ╚██╗ ██╔╝██╔══╝  ██╔══██╗    ██║     ██║     ██║   ██║██╔══██╗╚════██║
        ███████║██║███████╗╚████╔╝ ███████╗██║  ██║    ╚██████╗███████╗╚██████╔╝██████╔╝███████║
        ╚══════╝╚═╝╚══════╝ ╚═══╝  ╚══════╝╚═╝  ╚═╝     ╚═════╝╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝
                                                                                                
        SILVER
        #Clubhouse.all.map 
        Clubhouse.all.map .map do |clubhouse|
            clubhouse.tier == @tier

        end 
    end

    def self.display_gold

        puts <<-GOLD 
        here are the gold Clubs Available to you!"
        ██████╗  ██████╗ ██╗     ██████╗      ██████╗██╗     ██╗   ██╗██████╗ ███████╗
        ██╔════╝ ██╔═══██╗██║     ██╔══██╗    ██╔════╝██║     ██║   ██║██╔══██╗██╔════╝
        ██║  ███╗██║   ██║██║     ██║  ██║    ██║     ██║     ██║   ██║██████╔╝███████╗
        ██║   ██║██║   ██║██║     ██║  ██║    ██║     ██║     ██║   ██║██╔══██╗╚════██║
        ╚██████╔╝╚██████╔╝███████╗██████╔╝    ╚██████╗███████╗╚██████╔╝██████╔╝███████║
        ╚═════╝  ╚═════╝ ╚══════╝╚═════╝      ╚═════╝╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝
                                                                                    
            GOLD
            Clubhouse.all.map do |clubhouse|
            clubhouse.tier == @tier
        end 
    end


    def self.clubhouse_member_options

        puts "To look up Clubhouses available to you please enter your Membership tier"
        @tier = gets.chomp
        if    @tier == "bronze"
            display_bronze
        elsif @tier == "silver"         
            display_bronze
            display_silver

        elsif @tier == "gold"
            puts "here are all the clubhouses you have access to!"
            display_bronze
            display_silver
            puts "Plus these Premium Clubs"
            display_gold
                
        end
    end

end
