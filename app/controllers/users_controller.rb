class UsersController < ApplicationController
  
	def index 
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to 'pages#index'
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end
end

def user_params
		params.require(:user).permit(:email, 	:password)
end
