# frozen_string_literal: true

class UsersController < ApplicationController

  def index; end

  def new; end

  def create
    region = current_user.region 
    user = User.create(user_params.merge(password: Devise.friendly_token[0, 20], region: region))
    if user.persisted?
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
