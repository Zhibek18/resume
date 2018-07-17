class UserInformsController < ApplicationController
  def new
    @user_inform = UserInform.new
  end

  def create
  	#@user_inform = UserInform.create( user_id:current_user.id)
    @user_inform = current_user.user_informs.build(user_inform_params)
    if @user_inform.save
      redirect_to @user_inform
    else
      render :new
    end
  end
end

private
def user_inform_params
	params.require(:user_inform).permit(:firstname, :surname, :age, :city, :street, :house)
end