module AuthenticationConcern
  extend ActiveSupport::Concern

  included do
    helper_method :current_user
    helper_method :logged_in?
  end

  def current_user
    return nil if session[:token].blank?
    @current_user ||= User.where(token: session[:token]).first
  end

  def logged_in?
    !current_user.nil?
  end

  # def login_user(user)
  #   session[:token] = FIX THIS
  # end

  def valid_login?
    @user = User.find_by(email: params[:email])

    if @user.password == params[:password]
      @user.generate_token
      session[:token] = @user.token
      return true
    else
      return false
    end
  end

  def log_out
    session[:token].clear
  end

end
