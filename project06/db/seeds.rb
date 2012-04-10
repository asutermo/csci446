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

Role.create!(:name => 'admin', :descript => 'Full access')
Role.create!(:name => 'member', :descript => 'Basic access')
User.create!(:username => 'administrator', :password => 'password', :password_confirmation => 'password', :f_name => 'Andrew', :l_name => 'Morris', :email => 'a121212@gmail.com', :role_id => Role.find_or_create_by_name("admin").id)
User.create!(:username => 'member', :password => 'password', :password_confirmation => 'password', :f_name => 'Andrew', :l_name => 'Suter', :email => 'a131313@gmail.com', :role_id => Role.find_or_create_by_name("member").id)
(1..50).each do |i|
	Game.create!(:title => 'Generic Mega Game Sequel', :rating => 'Awesome', :user_id => 1)
end