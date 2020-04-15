class Clubhouse < ActiveRecord::Base
    belongs_to :record
    has_many :member, through: :record
end

#git new change