class Omelette < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :user_id, presence: true

  belongs_to :user
  def self.search(search)
  where("title ILIKE ? OR description ILIKE ? OR ingredients ILIKE ?", "%#{search}%", "%#{search}%","%#{search}%")
  end
end
