class Region < ApplicationRecord
    has_many :users
    has_many :hospitals
    has_many :staffcos
    has_many :jobs

    validates_presence_of :name
end