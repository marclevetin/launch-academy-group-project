class RegUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :omelettes
  has_many :reviews

  mount_uploader :avatar, AvatarUploader

  def admin?
    role == "admin"
  end
end
