

class Node{
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
    size =0;
  }
  insert(data){
    Node newNode = Node(data);
    if(head==null){
      head = newNode;
      tail = newNode;
      return;
    }
  }

  arrayToLinkedlist(List arr){
    for (var i = 0; i < arr.length-1; i++) {
      insert(arr[i]);
    }
  }
}