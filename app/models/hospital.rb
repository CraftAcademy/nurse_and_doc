class Hospital < ApplicationRecord
    has_many :jobs
    belongs_to :region
    has_many :departments 
    validates :name, uniqueness: true
end
