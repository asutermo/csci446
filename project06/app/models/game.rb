class Game < ActiveRecord::Base
	belongs_to :user
	validates :title, :presence => true

	rate = %w[Sucks Mediocre Better Awesome]

	def created_by?(user)
		self.user_id == user.id
	end
end
