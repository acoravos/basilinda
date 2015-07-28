class UserRandomChallenge < ActiveRecord::Base
  belongs_to :user
  belongs_to :random_challenge
end
