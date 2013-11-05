class Companion < ActiveRecord::Base
  attr_protected

	belongs_to :ticket
end
