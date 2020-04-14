class Clubhouse < ActiveRecord::Base
    belongs_to :records
    has_many :member, through: :records
end

#git new change