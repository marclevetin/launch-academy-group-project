class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates_confirmation_of :encrypted_password, message: 'should match confirmation'
  validates :role, presence: true
end
