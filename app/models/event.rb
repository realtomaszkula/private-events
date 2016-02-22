class Event < ActiveRecord::Base
  belongs_to :host, :class_name => 'User'

  has_many :invitations, :foreign_key => :attended_event_id
  has_many :attendees, :through => :invitations

  def self.upcoming
    self.where("date > ?", Time.now)
  end

  def self.past
    self.where("date < ?", Time.now)
  end


end
