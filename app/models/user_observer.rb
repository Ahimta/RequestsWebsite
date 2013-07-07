class UserObserver < ActiveRecord::Observer
	def before_save(user)
		location = user.location
		user.location.destroy

		user.location = Location.where(name: location.name).
			first_or_create
	end
end
