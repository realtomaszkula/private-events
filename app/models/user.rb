class User < ActiveRecord::Base
  has_many :hosted_events, :foreign_key => 'host_id', :class_name => 'Event'

  has_many :invitations, :foreign_key => :attendee_id
  has_many :attended_events, :through => :invitations

  has_secure_password


  def upcoming_events
    attended_events.where("date > ?", Time.now)
  end

  def past_events
    attended_events.where("date < ?", Time.now)
  end

end
