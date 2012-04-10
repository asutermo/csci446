# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.delete_all
User.delete_all
Role.delete_all

Role.create!(:name => 'admin', :descript => 'A system administrator. Full access to all features.')
Role.create!(:name => 'member', :descript => 'A member of the site')

User.create!(:username => 'administrator', :password => 'password', :password_confirmation => 'password', :f_name => 'Adolf', :l_name => 'Coors', :email => 'admin@gamez.com', :role_id => Role.find_or_create_by_name("admin").id)
User.create!(:username => 'member', :password => 'password', :password_confirmation => 'password', :f_name => 'Matz', :l_name => 'Matsumoto', :email => 'member@gamez.com', :role_id => Role.find_or_create_by_name("member").id)

(1..30).each do |i|
	Game.create!(:title => 'Wisest Wizard', :rating => 'meh', :user_id => 1)
end