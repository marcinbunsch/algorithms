#include <iostream>
using namespace std;

void printArray(int *array, int size) {
  cout << '[';
  for (int i = 0;i < size;i++) {
    cout << array[i];
    if (i < size - 1)
      cout << ',';
  }
  cout << ']' << endl;
}
