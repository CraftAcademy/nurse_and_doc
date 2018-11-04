class Staffco < ApplicationRecord
    validates_presence_of :name
    validates :email, uniqueness: true
end
