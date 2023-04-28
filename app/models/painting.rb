class Painting < ApplicationRecord
  belongs_to :user
  belongs_to :artist, optional: true
  has_many :reviews

  has_one_attached :image

  def self.search(query)
    return all if query.blank?

    query = "%#{query.strip.downcase}%"
    joins("LEFT OUTER JOIN artists ON paintings.artist_id = artists.id")
.where("LOWER(paintings.title) LIKE :query
      OR LOWER(paintings.description) LIKE :query
      OR LOWER(CAST(paintings.year AS VARCHAR)) LIKE :query
      OR LOWER(artists.first_name) LIKE :query
      OR LOWER(artists.last_name) LIKE :query", query: query)
  end
end
