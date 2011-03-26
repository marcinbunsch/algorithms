object Insertion {
  
  def insertion_sort(array: Array[Int]) {
    var key = 0;
    var sort_index = 0;
    for (index <- 1 until array.length) {
      key = array(index)
      sort_index = index - 1
      while (sort_index >= 0 && array(sort_index) > key) {
        array(sort_index + 1) = array(sort_index)
        sort_index -= 1
      }
      array(sort_index + 1) = key
    } 
    return array
  }
  
  def main(args: Array[String]) {
    val ar = Array(4, 2, 3, 5, 1)
    println("Before sort:")
    Helpers.printArray(ar)
    insertion_sort(ar)
    println("After sort:")
    Helpers.printArray(ar)
  }
}