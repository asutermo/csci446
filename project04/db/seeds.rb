# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
Article.create(title: 'Do I know rails?',
	name: 'Andrew Suter-Morris',
	body:%{<p>I think Im just kind of winging it, but who knows</p>},
	createdate: Time.now)