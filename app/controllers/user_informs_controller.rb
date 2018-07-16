class UserInformsController < ApplicationController
  def new
    @user_inform = User_inform.new
  end

  def create
    @user_inform = User_inform.new(user_inform_params)
    if @user_inform.save
      sign_in @user_inform
      redirect_to @user_inform
    else
      render :new
    end
  end
end

private
def user_params
	params.require(:user).permit(:firstname, :surname, :user_id, :age)
end