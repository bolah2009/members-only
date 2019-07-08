class User < ApplicationRecord
  attr_accessor :remember_token

  has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def remember
    self.remember_token = SecureRandom.urlsafe_base64
    update_attribute(:remember_digest, User.digest(remember_token))
  end
end
