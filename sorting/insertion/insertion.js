function insertion_sort(array) {
  var size = array.length;
  // Start with the second element of the array and move towards the end of the array
  for (var index = 1; index < size; index++) {
    // This is the value of the current element that we will be inserting at a different location
    var key        = array[index]
    // This is the initial index of the element we will start the comparison with, 
    // it is the previous element to the one we have stored under 'key'
    var sort_index = index - 1
    // We start at the sort_index and move back, towards the beginning of the array
    while (sort_index >= 0 && array[sort_index] > key) {
      // move the currently compared index one index back to make place for the key
      array[sort_index + 1] = array[sort_index]
      // decrease the sort index by 1 to check if the value under the previous index is greater
      sort_index--;
    }
    // As we decreased sort_index at the end of the while loop, 
    // we store the key under sort_index + 1 to make sure it's in the right place
    array[sort_index + 1] = key
  }
}

var array = [4,3,1,5,2]

console.log("Before sort:")
console.log(array)

insertion_sort(array)

console.log("After sort:")
console.log(array)