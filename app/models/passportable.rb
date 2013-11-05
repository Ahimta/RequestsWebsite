module Passportable
  PASSPORTABLES = [Ticket, Vacation]

  PASSPORTABLES.each do |passportable|
    passportable.class_eval do
      has_one :passport, as: :passportable, dependent: :destroy
      accepts_nested_attributes_for :passport

      after_validation { build_passport if passport.nil? }
    end
  end
end