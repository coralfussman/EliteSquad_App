class Member < ActiveRecord::Base
    belongs_to :record
    has_many :clubhouse, through: :record


end