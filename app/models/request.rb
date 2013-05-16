class Request < ActiveRecord::Base
  attr_accessible :accepted, :applicant_id, :user_id
  
  has_one :leave
  has_one :ticket
  has_one :vacation
end
