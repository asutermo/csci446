class Article < ActiveRecord::Base
	validates :title, :name, :body, presence: true
end
