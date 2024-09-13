class Agency < ApplicationRecord
  has_many :vtubers

  validates :name, presence: true
  validates :name, uniqueness: true

  def vtuber_count
    Vtuber.where(agency_id: id).length
  end
end
