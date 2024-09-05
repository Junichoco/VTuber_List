class Tag < ApplicationRecord
  acts_as_favoritable
  has_many :tag_markers, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
