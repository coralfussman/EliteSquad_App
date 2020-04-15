class Clubhouse < ActiveRecord::Base
    belongs_to :records
    has_many :member, through: :records
end




def display_bronze
    Clubhouse.all.map do |clubhouse|
        clubhouse.tier == bronze.tier
    end 
end

def display_silver
    Clubhouse.all.map do |clubhouse|
        clubhouse.tier == silver.tier
    end 
end

def display_gold
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
        puts "here are all the clubhouses you have access too!"
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
