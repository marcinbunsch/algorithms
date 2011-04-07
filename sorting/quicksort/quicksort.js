function quicksort(array) {
  // An array of zero or one elements is already sorted
  if (array.length < 2) return array
  // Temporary arrays which will hold greater and lesser values
  var less = [], more = []
  // Select and remove a pivot value pivot from array
  var pivot = array.pop()
  // Push the element to the appropriate temporary array, depending on the value
  for (var i = 0, len = array.length; i < len; i++) 
    (array[i] <= pivot ? less : more).push(array[i])
  // Update the array with the new order
  array = [].concat(quicksort(less), [pivot], quicksort(more))
  return array
}

var array = [4,3,1,5,2]

console.log("Before sort:")
console.log(array)

array = quicksort(array)

console.log("After sort:")
console.log(array)