class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, acceptance: { accept: [1, 2, 3, 4, 5] }
end
