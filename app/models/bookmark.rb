class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :vtuber

  validates_uniqueness_of :movie, scope: :list
end
