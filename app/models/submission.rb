class Submission < ApplicationRecord
  has_many_attached :thumbnail
  has_many_attached :vertical_picture
  validates :name, presence: true
end
