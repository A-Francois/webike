class UsersController < ApplicationController
  params.require(:user).permit(:pseudo, :email, :password, :photo)
  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
