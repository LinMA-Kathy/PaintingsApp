class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  has_many :artists
  has_many :paintings, through: :artists
  has_many :reviews, through: :paintings

  def main_artist
    artists.first || artists.build
  end
end
