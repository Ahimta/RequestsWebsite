class UserObserver < ActiveRecord::Observer
	def before_validation(user)
		location = user.location
		user.location = Location.where(name: location.name).first_or_initialize
	end
end
