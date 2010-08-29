class UserController < ApplicationController
  before_filter :login_required, only: :change_password
  
  def login
    if session[:user]
      redirect_to_stored
    elsif request.post?
      if session[:user] = User.authenticate(params[:login], params[:password])
        flash[:message] = "Login successful"
        redirect_to_stored
      else 
        flash[:warning] = "Login unsuccessful"
      end
    end
  end

  def logout
    session[:user] = nil
    flash[:message] = 'Logged out'
    redirect_to action: 'login'
  end
    # 
    # def change_password
    #   @user = session[:user]
    #   if request.post?
    #     @user.update_attributes(password: params[:password], password_confirmation: params[:password_confirmation])
    #     if @user.save
    #       flash[:message] = "Password changed"
    #     end
    #   end
    # end

end
