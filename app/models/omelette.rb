class Omelette < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :user_id, presence: true

  belongs_to :user
end
