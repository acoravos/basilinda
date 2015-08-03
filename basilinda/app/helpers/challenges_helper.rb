module ChallengesHelper

  def dare_question
    RandomChallenge.find(@challenge.random_challenge_id).dare
  end

  def truth_question
     RandomChallenge.find(@challenge.random_challenge_id).truth
  end
end
