class User < ActiveRecord::Base
  has_many :hosted_events, :foreign_key => 'host_id', :class_name => 'Event'
  has_secure_password


def User.new_token
  SecureRandom.urlsafe_base64
end

def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
end

end
