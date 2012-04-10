class Game < ActiveRecord::Base
	validates :title, :rating, :user_id, presence: true
	belongs_to :user, :foreign_key => "user_id"

	def made_by?(user)
		self.user_id == user.user_id
	end

	RATE = %w[Shite, Mediocre, Decent, Sexy]
end
