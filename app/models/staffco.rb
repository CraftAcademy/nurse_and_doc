class Staffco < ApplicationRecord
    belongs_to :region
    validates_presence_of :name
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
