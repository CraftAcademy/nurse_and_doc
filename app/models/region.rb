class Region < ApplicationRecord
    has_many :users
    has_many :jobs, through: :hospital
    validates_presence_of :name
end
