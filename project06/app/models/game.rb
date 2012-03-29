class Game < ActiveRecord::Base
	validates :title, :rating, :user_id, presence: true
	belongs_to :user, :foreign_key => "user_id"
end
