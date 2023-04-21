class Painting < ApplicationRecord
  belongs_to :artist
  has_many :reviews
  validates :views, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.search(query)
    return all if query.blank?

    query = "%#{query.strip.downcase}%"
    joins(:artist).where("LOWER(paintings.title) LIKE :query
      OR LOWER(paintings.description) LIKE :query
      OR LOWER(CAST(paintings.year AS VARCHAR)) LIKE :query
      OR LOWER(artists.first_name) LIKE :query
      OR LOWER(artists.last_name) LIKE :query", query: query)
  end
end
