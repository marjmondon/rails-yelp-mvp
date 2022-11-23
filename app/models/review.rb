class Review < ApplicationRecord
  belongs_to :restaurant

  AUTHORIZED_RATINGS = (1..5)

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: AUTHORIZED_RATINGS}
end
