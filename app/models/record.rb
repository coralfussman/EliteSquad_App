class Record < ActiveRecord::Base
    belongs_to :clubhouse
    belongs_to :member
end