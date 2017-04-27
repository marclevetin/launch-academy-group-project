class RegUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  def self.search(search)
  where("first_name ILIKE ? OR last_name ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
