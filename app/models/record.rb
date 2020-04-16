class Record < ActiveRecord::Base
    has_many :clubhouses
    has_many :members
end