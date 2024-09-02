class Tag < ApplicationRecord
  acts_as_favoritable

  validates :name, presence: true
  validates :name, uniqueness: true
end
