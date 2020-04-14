class Record < ActiveRecord::Base
    has_many :clubhouse
    has_many :member
end