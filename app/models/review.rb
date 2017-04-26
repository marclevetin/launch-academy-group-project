class Review < ApplicationRecord
  validates :body, presence: true
  validates :reg_user_id, presence: true, numericality: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 6 }

  belongs_to :reg_user
end
