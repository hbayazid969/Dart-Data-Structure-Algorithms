int binarySearch(List data, int left, int right, int find) {
  if (right >= left) {
    int middle = (left + (right - 1)~/2);

    //If the element is present at middle
    if (data[middle] == find) {
      return middle;
    }

    //If the element is smaller than middle
    if (data[middle] > find) {
      return binarySearch(data, left, middle - 1, find);
    }
    else
    {
    return binarySearch(data, middle + 1, right, find);
    }
  }
  return -1;
}

void main() {
  List list = [1,5,7,9,13,17,25,39];
  int x = 5;
  int n = list.length;
  int index = binarySearch(list, 0, n - 1, x);
  print('list:');
  print(list);
  if (index != -1) {
    print('$x found at index: $index');
  } else {
    print('$x Not found');
  }
}
