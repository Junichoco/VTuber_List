class VtuberMarker < ApplicationRecord
  belongs_to :vtuber
  belongs_to :list
  acts_as_list scope: :list, top_of_list: 1

  validates_uniqueness_of :vtuber, scope: :list
end
