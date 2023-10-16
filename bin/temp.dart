import 'package:test/expect.dart';

class Queues {
  late List<int> arr;
  late int rear;
  late int front;
  late int size;
  Queues(int size){
    arr = List.generate(size, (index) => 0);
    front = -1;
    rear = -1;
  }
  bool isFull(){
    if (front == 0 && rear == size -1) {
      return true;
    }
    else{
      return false;
    }
  }
  bool isEmpty(){
    if (front == -1) {
      return true;
    }else{
      return false;
    }
  }
  void enQueue(int element){
    if (isFull()) {
      print("full");
    }
    else{
      if (front == -1) 
        front = 0;
        rear ++;
        arr[rear] = element;
        print("inserted $element");

    }
  }
}
//sorting Algorithoms

void selectionSort(List<int> arr){
  int n = arr.length;
  for (int i = 0; i < n-1; i++) {
    int min_idx = i;
    for (int j = i+1; j < n; j++) {
      if (arr[j] < arr[min_idx]) {
        min_idx = j;
      }
    }
    int temp = arr[min_idx];
    arr[min_idx] = arr[i];
    arr[i] = temp;
  }
}



//insertion Sort
List<int> insertionSort(List<int> arr){
  for (var i = 1; i <arr.length; i++) {
    var key = arr[i];
    var j = i-1;

    while (j>= 0 && arr[j] >key) {
      arr[j+1] = arr[j];
      j--;
    }
    arr[j+1] = key;
  }
  return arr;
}

List<int> iSort(List<int> arr){
  for (var i = 1; i < arr.length; i++) {
    var key = arr[i];
    var j = i-1;
    while (j>=0&& arr[j]>key) {
      arr[j+1] = arr[j];
      j--;
    }
    arr[j+1] = key;
  }
  return arr;
}
void mergeSort(List arr){
      if(arr.length >1){
        int mid = arr.length ~/2;
        List left = arr.sublist(0,mid);
        List right = arr.sublist(mid);
        mergeSort(left);
        mergeSort(right);
        int i =0, j = 0, k=0;
        while (i< left.length && j<right.length ) {
          if (left[i]< right[j]) {
            arr[k] = left[i];
            i++;
          }
          else {arr[k] = left[j];
          j++;}
          k++;
        }
        while (i<left.length) {
          arr[k] = left[i];
          i++;
          k++;
        }
        while (j<right.length) {
          arr[k] = left[i];
          i++;
          k++;
        }
      }

}
//Stack
class stacks {
  late List<int> arr;
  late int capcity;
  late int top;
  stacks(int size){
    arr = List.filled(size, 0);
    capcity = size;
    top = -1;
  }
  void push(int data){
    if (isFull()) {
      print("stack is full");
    }
    print("inserting $data");
    arr[++top] = data;
  }
  int pop(){
    if (isEmpty()) {
      print("stack is empty");
    }
    return arr[top--];
  }
  bool isEmpty(){
    return top == -1;
  }
  bool isFull(){
    return top == capcity -1;
  }
}

class HashTable {
  late List<List<List<dynamic>>> table;
  int size;
  HashTable(this.size){
    table = List.generate(size, (index) => []);
  }
  int hash(dynamic key){
  return key.hashCode % size;
  }
}

void main(List<String> args) {
HashTable hashTable = HashTable(30);

print(hashTable.hash('a'));
print(hashTable.hash('Z'));
}