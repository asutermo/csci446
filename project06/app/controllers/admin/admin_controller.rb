class Admin::AdminController < ApplicationController
  before_filter :req_user
  filter_access_to :all
  layout 'admin'
end	