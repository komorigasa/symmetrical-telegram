class UsersController < ApplicationController
  def show 
  	@user = User.find(params[:id]) #Userモデルから、userを探してくるコード。
  end
end
