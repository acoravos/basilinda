class UsersController < ApplicationController

  # def new
  # end

  def create
    sign_up
    set_token
    redirect_to root_path
  end

  def show
  end
end
