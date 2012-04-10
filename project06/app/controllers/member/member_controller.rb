class Member::MemberController < ApplicationController
	def index
		@games = Game.paginate(:page => params[:page], 
      :order => 'created_at desc', :per_page => 10)
		respond_to do |format|
			format.html
			format.json {render :json => @games}
		end
	end
end