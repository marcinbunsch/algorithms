def insertion_sort(array)
  for index in 1..(array.length - 1)
    key        = array[index]
    sort_index = index - 1
    while sort_index >= 0 and array[sort_index] > key
      array[sort_index + 1] = array[sort_index]
      sort_index -= 1
    end
    array[sort_index + 1] = key
  end
  array
end

arr = [5,2,1,3,4]
puts "Before sort:"
puts arr.inspect
insertion_sort(arr)
puts "After sort:"
puts arr.inspect