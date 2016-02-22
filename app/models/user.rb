class User < ActiveRecord::Base
  has_many :hosted_events, :foreign_key => 'host_id', :class_name => 'Event'

  has_many :invitations, :foreign_key => :attendee_id
  has_many :attended_events, :through => :invitations

  has_secure_password
end
