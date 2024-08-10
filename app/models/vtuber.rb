class Vtuber < ApplicationRecord
  belongs_to :agency
  has_many :bookmarks
  has_many_attached :photos

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :description, presence: true
end
