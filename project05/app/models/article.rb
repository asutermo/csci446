class Article < ActiveRecord::Base
	validates :title, :body, :author_id, presence: true
	belongs_to :author, :foreign_key => "author_id"
end
