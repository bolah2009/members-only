# frozen_string_literal: true

class User < ApplicationRecord
  attr_accessor :remember_token
  has_many :posts

  has_secure_password

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest)
                    .is_password?(remember_token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  def remember
    self.remember_token = SecureRandom.urlsafe_base64
    update_attribute(:remember_digest, User.digest(remember_token))
  end
end
