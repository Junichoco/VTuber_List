class Vtuber < ApplicationRecord
  acts_as_favoritable
  acts_as_favoritor

  belongs_to :agency
  has_many :vtuber_markers, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates_uniqueness_of :name, scope: :agency

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
  against: [ :name, :description, :main_language ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
