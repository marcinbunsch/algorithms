insertion_sort := method(alist,
  for (index, 1, alist size - 1,
    key := alist at(index)
    sort_index := index - 1
    while(sort_index >= 0,
      if (alist at(sort_index) > key, 
        alist atPut(sort_index + 1, alist at(sort_index)),
        break
      )
      sort_index := sort_index - 1
    )
    alist atPut(sort_index + 1, key)
  )
)

alist := list(5,1,4,3,2)

"Before sort:" println
alist println

insertion_sort(alist)

"After sort:" println
alist println