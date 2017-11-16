class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password = params[:password]
    confirm_password = params[:confirm_password]
    if user.password == confirm_password
      user.save
      redirect_to '/account'
    else
      @errors = user.errors.full_messages
      render :new
    end
  end

  def account
    @user = current_user.id
  end

  # def show
  #   @user = current_user
  #   render :account
  # end
end
