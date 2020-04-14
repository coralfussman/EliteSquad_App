class Member < ActiveRecord::Base
    belongs_to :records
    has_many :clubhouse, through: :records
end