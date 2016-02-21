class Event < ActiveRecord::Base
    has_and_belongs_to_many :atendees
    belongs_to :creator
end
