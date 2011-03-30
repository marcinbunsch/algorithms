def quicksort(array)
  # an array of zero or one elements is already sorted
  if array.size > 1
    # temporary arrays which will hold greater and lesser values
    less, more = [], []
    # select and remove a pivot value pivot from array
    pivot = array.pop
    array.each do |element|
      # Push the element to the appropriate temporary array, depending on the value
      (element <= pivot ? less : more).push element
    end
    # Update the array with the new order
    array.replace quicksort(less) + [pivot] + quicksort(more)
  end
  array
end

arr = [5,2,1,3,4]

puts "Before sort:"
puts arr.inspect

quicksort(arr)

puts "After sort:"
puts arr.inspect