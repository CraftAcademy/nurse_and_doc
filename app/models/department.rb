class Department < ApplicationRecord
    belongs_to :hospital
    validates_presence_of :name
end
