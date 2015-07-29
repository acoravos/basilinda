class SessionController < ApplicationController


  def create
    if valid_login?
      set_token
      redirect_to dashboard_path
    else
      raise ArgumentError, "wrong password"
    end
  end


  def destroy
    log_out
    redirect_to root_path
  end

end
