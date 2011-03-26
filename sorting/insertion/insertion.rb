def insertion_sort(array)
  for index in 1..(array.length-1)
    key = array[index]
    search_index = index - 1
    while search_index >= 0 and array[search_index] > key
      array[search_index+1] = array[search_index]
      search_index = search_index - 1
    end
    array[search_index+1] = key
  end
  array
end

arr = [5,2,1,3,4]
puts "Before sort:"
puts arr.inspect
insertion_sort(arr)
puts "After sort:"
puts arr.inspect