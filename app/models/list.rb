class List < ApplicationRecord
  acts_as_favoritable
  acts_as_favoritor
  acts_as_list scope: :user, top_of_list: 1

  belongs_to :user
  has_many :list_markers, dependent: :destroy
  has_many :vtuber_markers, dependent: :destroy
  has_many :vtubers, through: :vtuber_markers, source_type: "Vtuber"
  has_one_attached :photo

  validates :name, presence: true
  validates_length_of :name, maximum: 32

  def toggle_private

    list = List.find(id)
    if(private)
      list.update(private: false)
    else
      list.update(private: true)
    end
  end

  def next_num
    VtuberMarker.where(list_id: id).length + 1
  end

  def add_vtuber(vtuber)
    vm = VtuberMarker.new
    vm.list_id = id
    vm.vtuber = vtuber
    vm.order_num = next_num
    vm.position = next_num

    return vm.save
  end

  def get_vtubers
    vtubers = []
    VtuberMarker.where(list_id: id).order("position ASC").each do |vm|
      vtubers << vm.vtuber
    end
    return vtubers
  end

  def has_vtuber?(vtuber)
    get_vtubers.include?(vtuber)
  end

  def get_vtuber_names
    vtubers = []
    vtuber_markers.each do |vm|
      vtubers << vm.vtuber.name
    end
    return vtubers
  end

  def get_vtuber_marker(order_num)
    VtuberMarker.where(list_id: id, position: position).first
  end

  def ordered_markers
    VtuberMarker.where(list_id: id).order("position ASC")
  end

  def move_vtuber(old_num, new_num)
    # if old_num != new_num && old_num > 0 && old_num <= vtuber_markers.length && new_num > 0 && new_num <= vtuber_markers.length

    markers =  VtuberMarker.where(list_id: id).order("position ASC")
    # target_vm = markers[position - 1]
    markers[old_num - 1].update(position: new_num)
    # markers[old_num - 1].insert_at(new_num)

  end

  def get_random_vtuber
    vtuber_markers.sample.vtuber

    # vtubers = []
    # pics_per_row = 5

    # pics_per_row.times do |i|
    #   vtubers << vtuber_markers.sample.vtuber
    # end
    # return vtubers
  end

  def get_vtuber_row
    vtubers = []
    pic_count = 0

    vtuber_markers.each do |vm|
      pic_count +=1 if vm.vtuber.photo_url || vm.vtuber.thumbnail.attached?
    end

    if pic_count <= 5
      vtubers = []
      vtuber_markers.each do |vm|
        vtubers << vm.vtuber if vm.vtuber.thumbnail.attached?
      end
      return vtubers
    else
      while vtubers.length < 5
        vtuber = get_random_vtuber
        if !vtubers.include?(vtuber) && (vtuber.thumbnail.attached? || (vtuber.photo_url && vtuber.photo_url != ""))
          vtubers << vtuber
        end
      end
    end
    return vtubers
  end

  # methods used only for debugging
  def order
    VtuberMarker.where(list_id: id).each do |vm|
      puts "#{vm.vtuber.name}: #{vm.position}"
    end
    # vtuber_markers.each do |vm|
    #   puts "#{vm.vtuber.name}: #{vm.order_num}"
    # end
  end

  def reset_order
    n = 1
    vtuber_markers.each do |vm|
      vm.update(position: n)
      n += 1
    end
  end

  def reset_positions
    n = 1
    ordered_markers.each do |vm|
      vm.update(position: n)
      n += 1
    end
  end

end
