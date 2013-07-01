class Coming < ActiveRecord::Base
	INCLUDES_FIND = [:applicant, :request, :user]
end
