module ChallengeConcern
  extend ActiveSupport::Concern

  def generate_challenge
    rand_num = rand(RandomChallenge.count)
    challenge = RandomChallenge.offset(rand_num).first
    current_user.random_challenges << challenge
  end

end
