class Author < ActiveRecord::Base
	has_many :articles, :limit => 10, :dependent => :destroy
	has_attached_file :photo
	validates_attachment_presence :photo
	validates :authorname, :presence => true
	validates :authorname, format: {with:  %r{^((?!pat).*$)}i, message: 'Must not have the name Pat'}
end
