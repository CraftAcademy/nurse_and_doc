class Region < ApplicationRecord
    has_many :users
    validates_presence_of :name
end
