require 'securerandom'

class User < ActiveRecord::Base
  include BCrypt
  include Gravtastic
  include SecureRandom
  gravtastic

  has_many :user_random_challenges
  has_many :random_challenges, through: :user_random_challenges

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
