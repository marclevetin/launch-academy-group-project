class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates_confirmation_of :encrypted_password,
    message: 'should match confirmation'
  validates :role, presence: true

  has_many :reviews
end
