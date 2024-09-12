class List < ApplicationRecord
  acts_as_favoritable
  acts_as_favoritor

  belongs_to :user
  has_many :list_markers, dependent: :destroy
  has_many :vtuber_markers, dependent: :destroy
  has_many :vtubers, through: :vtuber_markers, source_type: "Vtuber"
  has_one_attached :photo

  validates :name, presence: true

  def add_vtuber(vtuber)
    vm = VtuberMarker.new
    vm.list_id = id
    vm.vtuber = vtuber

    return vm.save
  end

  def get_vtuber_names
    vtubers = []
    vtuber_markers.each do |vm|
      vtubers << vm.vtuber.name
    end
    return vtubers
  end
end
