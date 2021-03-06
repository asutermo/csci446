class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user_session }
    end
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    
    respond_to do |format|
      if @user_session.save 
        format.html { redirect_to home_page(@user_session.user), :notice => 'Logged in' }
        format.json { render :json => @user_session, :status => :created, :location => @user_session }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user_session.errors, :status => :unprocessable_entity }
      end
    end
  end
  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to root_url, :notice => 'Logged out' }
      format.json { head :no_content }
    end
  end
end
