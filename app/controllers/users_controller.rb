# frozen_string_literal: true

class UsersController < ApplicationController

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
