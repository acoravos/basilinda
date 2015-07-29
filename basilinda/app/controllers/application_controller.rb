class ApplicationController < ActionController::Base
  include AuthenticationConcern
  include ChallengeConcern

  protect_from_forgery with: :exception
end
