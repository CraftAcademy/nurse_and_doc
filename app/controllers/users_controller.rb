class UsersController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    binding.pry
    @user = User.create(user_params)
    if @user.persisted?
      redirect_to root_path,  notice:  "RSC user newrsc@email.com created" # add email #{@user.} 
    else
      flash[:error] = "Fields can't be blank. Your user could not be saved"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end
end
