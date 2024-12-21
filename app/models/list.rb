class List < ApplicationRecord
  acts_as_favoritable
  acts_as_favoritor

  belongs_to :user
  has_many :list_markers, dependent: :destroy
  has_many :vtuber_markers, dependent: :destroy
  has_many :vtubers, through: :vtuber_markers, source_type: "Vtuber"
  has_one_attached :photo

  validates :name, presence: true
  validates_length_of :name, maximum: 32

  def next_num
    VtuberMarker.where(list_id: id).length + 1
  end

  def add_vtuber(vtuber)
    vm = VtuberMarker.new
    vm.list_id = id
    vm.vtuber = vtuber
    vm.order_num = next_num

    return vm.save
  end

  def get_vtubers
    vtubers = []
    VtuberMarker.where(list_id: id).order("order_num ASC").each do |vm|
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
    VtuberMarker.where(list_id: id, order_num: order_num).first
  end

  def ordered_markers
    VtuberMarker.where(list_id: id).order("order_num ASC")
  end

  def move_vtuber(old_num, new_num)
    if old_num != new_num && old_num > 0 && old_num <= vtuber_markers.length && new_num > 0 && new_num <= vtuber_markers.length

      markers =  VtuberMarker.where(list_id: id).order("order_num ASC")
      target_vm = markers[old_num - 1]
      # puts "#{old_num} #{markers[old_num-1].vtuber.name}"

      # markers[old_num-1].update(order_num: new_num)

      # puts "#{old_num} #{markers[old_num-1].vtuber.name}"


      # ordered_markers[old_num - 1].update(order_num: new_num)


      if new_num < old_num
        markers[new_num - 1..old_num - 2].each do |vm|
          vm.update(order_num: vm.order_num + 1)
        end
      elsif new_num > old_num
        markers[old_num..new_num - 1].each do |vm|
          vm.update(order_num: vm.order_num - 1)

          # puts "#{vm.vtuber.name} moved to #{vm.order_num}"
        end
      end

      target_vm.update(order_num: new_num)
      # puts "#{ordered_markers[old_num - 1].vtuber.name} moved to #{ordered_markers[old_num - 1].order_num}: #{new_num}"
      puts "#{target_vm.vtuber.name} moved to #{new_num}"

    end
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
      puts "#{vm.vtuber.name}: #{vm.order_num}"
    end
    # vtuber_markers.each do |vm|
    #   puts "#{vm.vtuber.name}: #{vm.order_num}"
    # end
  end

  def reset_order
    n = 1
    vtuber_markers.each do |vm|
      vm.update(order_num: n)
      n += 1
    end
  end

end
