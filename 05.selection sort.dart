void selectionSort(var list) {
  var n = list.length;
  for (var i = 0; i < n - 1; i++) {
    var indexMin = i;
    for (var j = i + 1; j < n; j++) {
      if (list[j] < list[indexMin]) {
        indexMin = j;
      }
    }
    if (indexMin != i) {
      var temp = list[i];
      list[i] = list[indexMin];
      list[indexMin] = temp;
    }
  }
}
void main() {
  var list = [5,1,6,2,8,3,9,4];
  print("Before sort: $list");
  selectionSort(list);
  print("After sort: $list");
}
