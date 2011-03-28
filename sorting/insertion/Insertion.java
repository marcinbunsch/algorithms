package sorting.insertion;
import shared.Helpers;

public class Insertion {
  
  public static int[] insertion_sort(int[] array) {
    int key, sort_index;
    for (int index = 1; index < array.length; index++) {
      key        = array[index];
      sort_index = index - 1;
      while (sort_index >= 0 && array[sort_index] > key) {
        array[sort_index + 1] = array[sort_index];
        sort_index--;
      }
      array[sort_index + 1] = key;
    }
    return array;
  }
  
  public static void main(String args[]) {

    int[] array = { 4,2,5,1,3 };

    System.out.println("Before sort:");
    Helpers.printArray(array);

    array = insertion_sort(array);

    System.out.println("After sort:");
    Helpers.printArray(array);

  }

}