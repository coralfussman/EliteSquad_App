class Clubhouse < ActiveRecord::Base
    belongs_to :records
    has_many :member, through: :records
end

def lookup_clubhouse
   
    Clubhouse.all.map do |clubhouse|
    clubhouse.tier == self.tier
    puts "Here are the #{self.tier} Clubhouses available to you."
            
    end
end