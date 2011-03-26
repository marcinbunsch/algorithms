def insertion_sort(array):
  for index in range(1, len(array)):
    key = array[index]
    search_index = index - 1
    while search_index >= 0 and array[search_index] > key:
      array[search_index + 1] = array[search_index]
      search_index = search_index - 1
    array[search_index + 1] = key
  return array
  
alist = [5,2,3,1,4]
print "Before sort:"
print alist
insertion_sort(alist)
print "After sort:"
print alist