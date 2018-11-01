class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

def self.from_devise(params)
    where(email: params.email).first_or_create do |user|
    user.password = "password"
    user.password_confirmation = "password"
    binding.pry
    User.create!(user)
  end
end

