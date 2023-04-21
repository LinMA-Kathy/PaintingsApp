class Review < ApplicationRecord
  belongs_to :painting
  validates :reviewer, :rating, :comment, presence: true
end
