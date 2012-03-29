# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.delete_all
User.delete_all

for i in (1..50)
	User.create(:f_name => 'woot', :l_name => 'wooterson', :email => 'ww#{i}@woot.com', :user_name => 'wootuser#{i}', :password => 'password')
end

for i in (1..50)
	Game.create(:title => "Game of the Year Sequel Mega #{i}", :rating => 2, :user_id => i)
end