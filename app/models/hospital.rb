class Hospital < ApplicationRecord
    has_many :jobs 
    belongs_to :region
    validates :name, uniqueness: true
end
