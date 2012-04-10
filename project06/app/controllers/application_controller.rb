class ApplicationController < ActionController::Base

  helper_method :current_user, :current_user_session
  protect_from_forgery
  before_filter { |u| Authorization.current_user = u.current_user }

  protected

 def current_user
    return @current_user if defined? @current_user
    @current_user = current_user_session && current_user_session.record
  end

  

  def current_user_session
    return @current_user_session if defined? @current_user_session
    @current_user_session = UserSession.find
  end

  def home_page(user)
    return root_url if user.nil?
    user.is_member? ? member_root_url : admin_root_url
  end

  def no_permiss
    flash[:alert] = "Access denied"
    if current_user.is_member?
      redirect_to member_root_url
    elsif current_user.is_admin?
      redirect_to admin_root_url
    else
      redirect_to root_url
    end
  end

  def req_user
    unless current_user
      flash[:alert] = "You must be logged in"
      redirect_to :login
      return false
    end
  end

 

  
end
