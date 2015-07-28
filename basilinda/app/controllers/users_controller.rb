class UsersController < ApplicationController

  # def new
  # end

  def create
    sign_up
    set_token
  end

  def show
  end
end
