class Admin::AdminController < ApplicationController
	before_filter :require_user
	filer_access_to :all
	layout 'admin'
end
