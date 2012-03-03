class Article < ActiveRecord::Base
	validates :title, :body, :auth_id, presence: true
	belongs_to :author
end
