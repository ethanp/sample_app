class UsersController < ApplicationController

  def show
    # @user is passed (by Rails) as a "parameter" to "show.html.erb"
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user # we don't need to use user_url
    else
      render 'new'
    end
  end

  private

  def user_params # only allow the following parameters (e.g. *not* :admin)
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
