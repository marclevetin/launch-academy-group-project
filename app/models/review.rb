class Review < ApplicationRecord
  validates :body, presence: true
  validates :rating, presence: true,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 0,
      less_than: 6
    }

  belongs_to :reg_user
<<<<<<< HEAD
  def self.search(search)
  where("title ILIKE ? OR body ILIKE ?", "%#{search}%", "%#{search}%")
  end
=======
  belongs_to :omelette
>>>>>>> 61cb3ba0421174e04fe683582548632069031a40
end
