class Hospital < ApplicationRecord
    validates :name, uniqueness: true
end
