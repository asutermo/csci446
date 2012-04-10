class Role < ActiveRecord::Base
	has_many :users
	validates :name, :presence => true
	validates_uniqueness_of :name
	attr_accessible :name, :description
end
