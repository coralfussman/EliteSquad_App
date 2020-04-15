class Clubhouse < ActiveRecord::Base
    belongs_to :records
    has_many :member, through: :records
end




def display_bronze



    Clubhouse.all.map do |clubhouse|
        puts  <<-BRONZE
        Here are the Bronze Clubs Available to you!

        __________                                      _________ .__       ___.           
        \______   \_______  ____   ____ ________ ____   \_   ___ \|  |  __ _\_ |__   ______
         |    |  _/\_  __ \/  _ \ /    \\___   // __ \  /    \  \/|  | |  |  \ __ \ /  ___/
         |    |   \ |  | \(  <_> )   |  \/    /\  ___/  \     \___|  |_|  |  / \_\ \\___ \ 
         |______  / |__|   \____/|___|  /_____ \\___  >  \______  /____/____/|___  /____  >
                \/                    \/      \/    \/          \/               \/     \/ 
        BRONZE

        clubhouse.tier == bronze.tier
       


    end 
end

def display_silver
    puts <<-SILVER 
    here are the Silver Clubs Available to you!"

    _________.__.__                      _________ .__       ___.           
    /   _____/|__|  |___  __ ___________  \_   ___ \|  |  __ _\_ |__   ______
    \_____  \ |  |  |\  \/ // __ \_  __ \ /    \  \/|  | |  |  \ __ \ /  ___/
    /        \|  |  |_\   /\  ___/|  | \/ \     \___|  |_|  |  / \_\ \\___ \ 
   /_______  /|__|____/\_/  \___  >__|     \______  /____/____/|___  /____  >
           \/                   \/                \/               \/     \/ 
    SILVER
    Clubhouse.all.map do |clubhouse|
        clubhouse.tier == silver.tier

    end 
end

def display_gold

    puts <<-GOLD 
    here are the gold Clubs Available to you!"
    __________                                      _________ .__       ___.           
\______   \_______  ____   ____ ________ ____   \_   ___ \|  |  __ _\_ |__   ______
 |    |  _/\_  __ \/  _ \ /    \\___   // __ \  /    \  \/|  | |  |  \ __ \ /  ___/
 |    |   \ |  | \(  <_> )   |  \/    /\  ___/  \     \___|  |_|  |  / \_\ \\___ \ 
 |______  / |__|   \____/|___|  /_____ \\___  >  \______  /____/____/|___  /____  >
        \/                    \/      \/    \/          \/               \/     \/ 
        GOLD
    Clubhouse.all.map do |clubhouse|
        clubhouse.tier == gold.tier
    end 
end

def clubhouse_member_options

    puts "To look up Clubouses available to you please enter your Membership tier"
    tier = get.chomp
    if tier == "bronze"
        display_bronze
    elsif tier == "silver"
      

                     
        display_bronze
        display_silver

    elsif tier == "gold"
        puts "here are all the clubhouses you have access to!"
        display_bronze
        display_silver
        puts "Plus these Premium Clubs"
        display_gold
    end





    



        

    
    puts "Here are the #{self.tier} Clubhouses available to you."


      end     
    end
end
def displays_all_clubhouses
    Clubhouse.all.map do |clubhouse|
        

end
