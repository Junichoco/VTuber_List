class Agency < ApplicationRecord
  has_many :vtubers

  validates :name, presence: true
  validates :name, uniqueness: true
end
