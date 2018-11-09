class Region < ApplicationRecord
    has_many :users
    has_many :hospitals
    validates_presence_of :name
end
