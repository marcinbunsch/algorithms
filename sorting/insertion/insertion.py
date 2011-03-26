def insertion_sort(array):
  for index in range(1, len(array)):
    key        = array[index]
    sort_index = index - 1
    while sort_index >= 0 and array[sort_index] > key:
      array[sort_index + 1] = array[sort_index]
      sort_index = sort_index - 1
    array[sort_index + 1] = key
  return array
  
alist = [5,2,3,1,4]
print "Before sort:"
print alist
insertion_sort(alist)
print "After sort:"
print alist