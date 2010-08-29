class ApplicationController < ActionController::Base
  protect_from_forgery
  filter_parameter_logging "password"
  
  def login_required
    if session[:user]
      return true
    end
    flash[:warning] = "Please login to conginue"
    session[:return_to]=request.request_uri
    redirect_to :controller => 'user', :action => 'login'
    return false
  end
  
  def current_user
    session[:user]
  end
  
  def redirect_to_stored
    if return_to = session[:return_to]
      session[:return_to] = nil
      redirect_to return_to
    else
      redirect_to :controller => 'episodes', :action => 'index'
    end
  end
end
