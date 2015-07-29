class ChallengesController < ApplicationController
  include ChallengesHelper

  def create
    generate_challenge
    redirect_to dashboard_path
  end

  def accept
    @challenge = UserRandomChallenge.find(params[:id])
  end

  def update
    @answer = UserRandomChallenge.find(params[:id])
    @answer.update_attributes(status: "accepted", truthordare: params[:truthordare], answer: params[:user_random_challenge][:answer])
    redirect_to dashboard_path
  end

end
