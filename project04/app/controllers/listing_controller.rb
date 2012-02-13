class ListingController < ApplicationController
  def index
  	@articles = Article.order(:createdate)
  end
end
