class User < ActiveRecord::Base
	acts_as_authentic
	has_many :games, :limit => 10, :dependent => :destroy
	validates :email, :username, :uniqueness => true
	has_attached_file :photo, :styles => {:small => '200x200'}
	validates_attachment_presence :photo
	validates :username, :password, :f_name, :l_name, :email, presence: true
	validates_attachment_content_type :photo, :content_type => ['image/png', 'image/jpeg']
end
