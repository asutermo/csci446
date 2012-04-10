module UsersHelper
	def last_login(user)
		if user.login_last.nil?
			"No recorded login"
		else
			time_ago_in_words(user.login_last)
		end
	end

end
