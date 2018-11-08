# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def new; end

  def create
    binding.pry
    user = User.create(user_params.merge(password: Devise.friendly_token[0, 20]))
    if user.persisted?
      message = " Currently logged in as #{current_user.email}" if user_signed_in?
      redirect_to root_path, notice: "RSC user #{User.last.email} created. #{message}."
    else
      errors = user.errors.full_messages
      render json: { message: errors }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
