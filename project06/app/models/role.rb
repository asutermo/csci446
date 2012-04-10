class Role < ActiveRecord::Base
  attr_accessible :name, :descript
  
  validates :name, :presence => true
  validates_uniqueness_of :name
  
  has_many :users

  def after_initialize
    self.name = name.downcase.strip unless name.nil?
  end
end
