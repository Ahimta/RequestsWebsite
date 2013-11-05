class Alert < ActiveRecord::Base
  attr_protected

	validates :body, :title, presence: true
end
