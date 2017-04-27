class Omelette < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true

<<<<<<< HEAD
  belongs_to :user
  def self.search(search)
  where("title ILIKE ? OR description ILIKE ? OR ingredients ILIKE ?", "%#{search}%", "%#{search}%","%#{search}%")
  end
=======
  belongs_to :reg_user
  has_many :reviews

  mount_uploader :photo, OmelettePhotoUploader
>>>>>>> 61cb3ba0421174e04fe683582548632069031a40
end
