object Helpers {
  def printArray(array: Array[Int]) {
    Console.print("[")
    for (index <- 0 until array.length) {
      Console.print(array(index))
      if (index < array.length - 1) 
        Console.print(",")
    }
    Console.println("]")
  }
}