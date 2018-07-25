class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5],
    message: "is not a valid" }, numericality: {only_integer: true }
end
