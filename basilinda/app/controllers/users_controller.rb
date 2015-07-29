class UsersController < ApplicationController

  # def new
  # end

  def create
    sign_up
    set_token
    redirect_to dashboard_path
  end

  def show
    # @unlocked_challenges = UserRandomChallenge.where(user_id: current_user.id)
  end

end
