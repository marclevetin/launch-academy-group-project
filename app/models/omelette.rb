class Omelette < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true

  belongs_to :reg_user

  mount_uploader :photo, OmelettePhotoUploader
end
