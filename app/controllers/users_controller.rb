class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = user.find(params[:id])
  end
  def update
  	@user = User.find(params[:id])
  	if @user.update_atributtes(secure_params)
  		redirect_to root_path, :notice => 'no problems'
  	else
  		redirect_to root_path, :alert => 'something went wrong'
  	end
  end
  private
  def secure_params
  	params.require(:user).permit(:role)
  end
end
