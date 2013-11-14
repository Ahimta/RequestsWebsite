class Coming < ActiveRecord::Base
	INCLUDES_FIND = [:applicant, :request, :user]

	extend Requestable
	acts_as_requestable
	acts_as_movable
end
