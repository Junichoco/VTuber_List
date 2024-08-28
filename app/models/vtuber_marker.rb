# frozen_string_literal: true

class VtuberMarker < ApplicationRecord
  extend ActsAsFavoritor::FavoriteScopes

  belongs_to :vtuber, polymorphic: true
  belongs_to :list, polymorphic: true

  validates_uniqueness_of :vtuber, scope: :list

  def block!
    update!(blocked: true)
  end
end
