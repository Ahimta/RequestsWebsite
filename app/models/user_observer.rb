class UserObserver < ActiveRecord::Observer
	
	# prevent duplicate User records
	def before_save(user)
		location = user.location

		user.location = Location.where(name: location.name).
			first_or_create

		location.destroy unless user.location == location
	end
	
	
	# prevent admin users from being destroyed
	def before_destroy(user)
		false if user.admin
	end
end
