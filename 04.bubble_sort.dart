void main() {
  List<int> array = [5, 1, 4, 2, 8];
  print('Before Bubble sort : $array');
  List<int> sortedarray = bubbleSort(array);
  print('After Bubble sort : $sortedarray');
}

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        // Swapping using temporary variable
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}
