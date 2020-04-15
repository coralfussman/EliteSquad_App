require_relative '../config/environment'
]
puts "Please enter the name you would like to go by."
name = gets.chomp
puts "Hi #{name}. Welcome to EliteSquad! Here you will find many different clubhouses, each with various activities and amenities that you may find of interest."

def lookup_clubhouse
    puts "To look up Clubouses available to you please enter your Membership tier"
    Clubhouse.all.map do |clubhouse|
    clubhouse.tier == username.tier
    puts "Here are the #{self.tier} Clubhouses available to you."
            
    end
end
    
  lookup_clubhouse  
   

def displays_all_clubhouses


end
