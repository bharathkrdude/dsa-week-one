

import 'sorting.dart';

class Node {
  int? data;
  Node? next;
  Node(this.data);
}
class LinkedList {
  Node? head;
  Node? tail;
  int? size;
  LinkedList(){
    head = null;
    tail = null;
    size = 0;
  }
  append(data){
    Node newNode =Node(data);
    if (head==null) {
      head = newNode;
      tail = newNode;
      size = size!+1;
      return;
    }
    tail?.next = newNode;
    tail = newNode;
    size = size!+1;
  }
  display(){
    if (head==null) {
      return;
    }
    Node? current = head;
    String list = "";
    while (current != null) {
      list += ("${current.data}=>");
      current = current.next;
    }
    print(list);
  }
  prepend(data){
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode; 
  }
  insertAtIndex(int data,int pos){
    if (pos<0 || pos>size!) {
      return;
    }
    else if(pos == head){
      prepend(data);
    }
    Node newNode = Node(data);
    Node? prev = head;
    for (var i = 0; i < pos-1; i++) {
      prev = prev?.next;
    }
    newNode.next = prev?.next;
    prev?.next = newNode;
    size = size!+1;
  }
  arrayToLinkedlist(List arr){
    for (var i = 0; i < arr.length; i++) {
      append(arr[i]);
    }
    delete(data){
      if (head==null) 
        return;
      if (head!.data==data) {
        head=head!.next;
        return;
      }
      Node? current = head;
      while (current!=null) {
        if (current.next ==tail) {
          current.next= null;
          tail = current;
          return;
        }
        if (current.next?.data==data) {
          current.next = current.next?.next;
        }
      }

    }
  }
  
}
binarySearch(List<int> arr,int target){
    int left = 0;
    int right = arr.length-1;
    while (left<=right ) {
      int middle = left+right~/2;
      if (arr[middle]==target) {
        return middle;
      }
      else if(arr[middle]<target){
        left = middle+1;
      }else{
        right = middle-1;
      }
      
    }
    return -1;
  }
 _binarySearch(List<int> list, int target,int left,int right){
  int middle = (left+right)~/2;
 while (target==middle) {
   return middle;
 }

 }
  
void main() {
 LinkedList linkedList = LinkedList();
 SortingAlgo sort = SortingAlgo();
   List<int> arr = [3,1,8,2,9,6,4,0,-1];
  print(arr);
  sort.bubbleSorting(arr);
 print(arr);
}
