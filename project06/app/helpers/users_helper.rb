module UsersHelper
	def last_login(user)
		unless user.login_last.nil?
			time_ago_in_words(user.login_last)
		else
			"No recorded login"
		end
	end

end
