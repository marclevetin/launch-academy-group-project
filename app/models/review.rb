class Review < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true, numericality: true

  belongs_to :user
end
