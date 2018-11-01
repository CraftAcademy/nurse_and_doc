class UsersController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    user = User.create(user_params.merge(password: Devise.friendly_token[0, 20]))
    @message = if user.persisted?
                 "RSC user #{User.last.email} created"
               else
                 'This did not work'
               end
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end
end
