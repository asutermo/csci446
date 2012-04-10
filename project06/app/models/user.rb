class User < ActiveRecord::Base
	attr_accessor:recaptcha
	belongs_to :role
	acts_as_authentic
	has_many :games, :limit => 10, :dependent => :destroy
	validates :email, :username, :uniqueness => true
	validates :email, :format => {:with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :on => :create}
	has_attached_file :photo, :styles => {:small => '200x200'}
	validates_attachment_presence :photo
	validates :username, :password, :f_name, :l_name, :email, presence: true
	validates_attachment_content_type :photo, :content_type => ['image/png', 'image/jpeg']
	validates_length_of :username, :minimum => 6
	validates_length_of :password, :minimum => 6, :on => :create

	def is_admin?
		self.groll.eql? "admin"
	end

	def groll
		self.role.name.downcase
	end

	def is_member?
		self.groll.eql? "member"
	end

end
