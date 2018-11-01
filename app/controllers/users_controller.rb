class UsersController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    user = User.create(user_params.merge(password: Devise.friendly_token[0, 20]))
    if user.persisted?
    redirect_to root_path, notice: "RSC user #{User.last.email} created"
    else
    redirect_to root_path, notice: "Invalid Email or password."
    end
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end
end