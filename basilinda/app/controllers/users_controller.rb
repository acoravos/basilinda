class UsersController < ApplicationController

  # def new
  # end

  def create
    sign_up
    set_token
    redirect_to dashboard_path
  end

  def show
    @unlocked_challenges = UserRandomChallenge.where(user_id: current_user.id,  status: nil)
    @rejected_challenges = UserRandomChallenge.where(user_id: current_user.id, status: "rejected")
    @complete_truths = UserRandomChallenge.where(user_id: current_user.id, status: "accepted", truthordare: "truth")
    @complete_dares = UserRandomChallenge.where(user_id: current_user.id, status: "accepted", truthordare: "dare")
  end

end
