module Movable
  MOVABLES = [Coming, Leave]

  MOVABLES.each do |movable|
    movable.class_eval do
      validates :reason, presence: true
    end
  end
end