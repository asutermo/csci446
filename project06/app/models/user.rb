class User < ActiveRecord::Base
	acts_as_authentic
  belongs_to :role
  has_attached_file :photo
	has_many :games, :dependent => :destroy
	validates :email, :username, :uniqueness => true
  validates :email, :format => {:with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :on => :create}
	validates :f_name, :l_name, :presence => true
  validates :password, :confirmation => true, :presence => true, :on => :create
  validates_length_of :password, :minimum => 6, :on => :create
	validates_length_of :username, :minimum => 6
  has_attached_file :photo, :styles => {:small => '200x200'}
  validates_attachment_presence :photo
  def full_name
    self.f_name.capitalize + " " + self.l_name.capitalize
  end

  def get_role
    self.role.name.downcase
  end
  
  def is_member?
    self.get_role.eql? "member"
  end
  
  def is_admin?
    self.get_role.eql? "admin"
  end
  
  def to_s
    self.f_name + ' ' + self.l_name
  end
  
  def role_symbols
    [role.name.downcase.to_sym]
  end
end
