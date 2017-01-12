class UsersController < ApplicationController
  before_action :authroize, except: [:index, :show]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.user_id
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    end
  end

end
