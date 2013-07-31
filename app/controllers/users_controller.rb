class UsersController < ApplicationController
  
  def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
  end
 
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
  

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    end # <= ends the if
  end # <= ends the def create
end # <= ends the class