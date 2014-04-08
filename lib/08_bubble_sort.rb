def bubble_sort(numbers)
  until is_sorted?(numbers)
    numbers.each_with_index do |i,index|
      next if (index + 1) == numbers.length || numbers[index] < numbers[index + 1] 
      left_copy = i
      right_copy = numbers[index + 1]
      
      if numbers[index] > numbers[index + 1]
        numbers[index] = right_copy
        numbers[index + 1] = left_copy
      end
    end
  end
  numbers
end

def is_sorted?(array)
  array.each_with_index do |num,index|
    next if (index + 1) == array.length 
    return false if array[index] > array[index + 1]
  end
  true
end
    



#rake spec spec/08_bubble_sort_spec.rb