class UsersController < ApplicationController
  def new
  end
  def create
    @user = User.create(user_params)
  end

  private

    def user_params
      params[:user].slice(:name, :email)
    end

end
