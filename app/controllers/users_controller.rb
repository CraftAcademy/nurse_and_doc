class UsersController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    binding.pry
    user = User.create(user_params.merge(password: Devise.friendly_token[0, 20]))
    if user.persisted?
      redirect_to root_path, notice: "RSC user #{User.last.email} created"#, currently logged in as #{current_user.email}."
      # there is at the moment no requirement for the user to be logged in so the message above will not work
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