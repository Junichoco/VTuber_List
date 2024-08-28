class Vtuber < ApplicationRecord
  acts_as_favoritable

  belongs_to :agency
  has_many :vtuber_markers, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates_uniqueness_of :name, scope: :agency
end
