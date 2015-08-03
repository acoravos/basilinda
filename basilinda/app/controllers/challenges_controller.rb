class ChallengesController < ApplicationController
  include ChallengesHelper

  def create
    generate_challenge
    redirect_to dashboard_path
  end

  def accept
    @challenge = UserRandomChallenge.find(params[:id])
  end

  def reject
    challenge = UserRandomChallenge.find(params[:id])
    challenge.update_attributes(status: "rejected")
    redirect_to dashboard_path
  end

  def update
    @answer = UserRandomChallenge.find(params[:id])
    @answer.update_attributes(status: "accepted", truthordare: params[:truthordare], answer: params[:user_random_challenge][:answer])
    redirect_to dashboard_path
  end

  def unlock
    challenge = UserRandomChallenge.find(params[:id])
    challenge.update_attributes(status: nil)
    render 'users/show'
    # redirect_to dashboard_path
  end

end
