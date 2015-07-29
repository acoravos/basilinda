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

  def set_token
    @user = User.find_by(email: params[:email])
    @user.generate_token
    session[:token] = @user.token
  end

  def valid_login?
    @user = User.find_by(email: params[:email])

    if @user.password == params[:password]
      return true
    else
      return false
    end
  end

  def log_out
    session[:token].clear
  end

  def sign_up
    user = User.new(
      email: params[:email],
      first_name: params[:first_name],
      last_name: params[:last_name]
     )
    user.password = params[:password]
    user.save!
  end

end
