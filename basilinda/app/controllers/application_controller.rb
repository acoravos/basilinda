class ApplicationController < ActionController::Base
  include AuthenticationConcern

  protect_from_forgery with: :exception
end
