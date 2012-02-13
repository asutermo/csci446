class Article < ActiveRecord::Base
	validates :title, :name, :body, presence: true
	validates :name, format: {with:  %r{^((?!pat).*$)}i,
		message: 'Must not have the name Pat'}
end