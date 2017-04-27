class RegUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
<<<<<<< HEAD
  def self.search(search)
  where("first_name ILIKE ? OR last_name ILIKE ?", "%#{search}%", "%#{search}%")
=======

  has_many :omelettes
  has_many :reviews

  mount_uploader :avatar, AvatarUploader

  def admin?
    role == "admin"
>>>>>>> 61cb3ba0421174e04fe683582548632069031a40
  end
end
