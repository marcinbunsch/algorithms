#include "../../shared/includes/helpers.cpp"

void insertion_sort(int *array, int size) {
  int key, search_index;
  for (int index = 1; index < size; index++) {
    key = array[index];
    search_index = index - 1;
    while (search_index >= 0 && array[search_index] > key) {  
      array[search_index+1] = array[search_index];
      search_index--;
    }
    array[search_index+1] = key;
  }                
}

int main() {
  int ar[] = {5,1,4,3,2};
  int size = 5;
  cout << "Before sort:" << endl;
  printArray(ar, size);
  insertion_sort(ar, size);
  cout << "After sort:" << endl;
  printArray(ar, size);
}