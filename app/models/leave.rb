class Leave < ActiveRecord::Base
	INCLUDES_FIND = Coming::INCLUDES_FIND

	extend Requestable
	acts_as_requestable
	acts_as_movable
end
