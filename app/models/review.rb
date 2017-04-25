class Review < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :reg_user_id, presence: true, numericality: true

  belongs_to :reg_user
end
