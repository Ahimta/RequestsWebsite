class Passport < ActiveRecord::Base
  attr_protected

	belongs_to :passportable, polymorphic: true
	has_attached_file :picture, styles: { medium: '300x300' }
	
	validates_attachment :picture, size: { in: 0..2.megabytes }
end
