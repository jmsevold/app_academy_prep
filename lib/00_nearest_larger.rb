def nearest_larger(array, i)
  i = array[i]
  i_index = array.index(i)
  left_side = array[0...i_index]
  right_side = array[(i_index+1)..-1]
  if i == array.max
    nil
  elsif left_side.max > i
    array.index(left_side.max)
  elsif !(left_side.max > i) && right_side.max > i
    array.index(right_side.max)
  end
end
	