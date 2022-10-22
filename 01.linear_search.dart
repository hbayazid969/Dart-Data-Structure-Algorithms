//Linear Search in Dart

void linearSearch(List<int> data, int find){
  for(int i = 0; i< data.length; i++){
    if(data[i] == find){
      print("${data[i]} is found at position ${i+1}");
    }
  }
}

void main(){
  List<int> data = [10,20,30,40,50,60,70,80];
  int find = 50;
  linearSearch(data, find);
}
