class Companion < ActiveRecord::Base
  attr_accessible :birthdate, :name, :relation
  belongs_to :ticket
  
  #validates :birthdate, presence: true
  #validates :name, presence: true
  #validates :relation, presence: true
end
