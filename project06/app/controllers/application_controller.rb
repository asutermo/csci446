class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter { |u| Authorization.current_user = u.current_user}
  helper_method :current_user, :current_user_session
  private
  def current_user_session
  	return @current_user_session if defined? @current_user_session
  	@current_user_session = UserSession.find
  end
  def current_user
  	return @current_user if defined? @current_user
  	@current_user_session = current_user_session && current_user_session.record
  end
  def user_required
    unless current_user
      flash[:alert] = "Gotta be logged in foo"
      redirect_to :login
      return false
    end
  end
  def no_permission
    flash[:alert] = "ACCESS DENIED"
    if current_user.is_member?
      redirect_to member_root_url
    elsif current_user.is_admin?
      redirect_to admin_root_url
    else
      redirect_to root_url
    end
  end

  def home_page(user)
    return root_url if user.nil?
    user.is_member? ? member_root_url : admin_root_url
  end

end
