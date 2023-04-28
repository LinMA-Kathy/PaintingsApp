class Artist < ApplicationRecord
  belongs_to :user
  has_many :paintings
  validates :first_name, :last_name, presence: true


  def full_name
    "#{first_name} #{last_name}"
  end
end
