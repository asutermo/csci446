class Author < ActiveRecord::Base
	has_many :articles, :dependent => :destroy
	has_attached_file :photo
	validates :authorname, :presence => true
	validates :authorname, format: {with:  %r{^((?!pat).*$)}i, message: 'Must not have the name Pat'}
end
