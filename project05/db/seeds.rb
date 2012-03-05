# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
Author.delete_all


Author.create(:id=>1, :authorname => "ASM")
Author.create(:id=>2, :authorname => "TEST")
Author.create(:id=>3, :authorname => "Andrew Suter-Morris")
(1..150).each do |i|
	Article.create( :title=> 'Woo', :body => "test data", :author_id => 1, :create_date => Time.now, :edit_count => 1)
end