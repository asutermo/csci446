class UsersController < ApplicationController
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def create
    @user = User.new(params[:user])
    @user.role_id = Role.find_or_create_by_name("member").id
    respond_to do |format|
      if verify_recaptcha(@user) and @user.save
        format.html { redirect_to root_url, notice: 'User was successfully registered.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
