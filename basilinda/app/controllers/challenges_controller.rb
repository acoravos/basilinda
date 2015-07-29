class ChallengesController < ApplicationController

  def create
    generate_challenge
    redirect_to dashboard_path
  end

end
