class Votes < ApplicationRecord
  validates :vote, numericality: { only_integer: true, less_than_or_equal_to: 1, greater_than_or_equal_to: -1 }, presence: true

  belongs_to :reg_user
  belongs_to :review
end
