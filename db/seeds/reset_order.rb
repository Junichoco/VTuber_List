# rake db:seed:reset_order

# VtuberMarker.all.each do |vm|
#   vm.update(position: vm.order_num)
#   # vm.position = vm.order_num
#   # vm.save
# end

List.all.each do |list|
  list.reset_positions
end
