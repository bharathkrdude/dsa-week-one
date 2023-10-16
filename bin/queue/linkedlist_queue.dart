class Node{
  int data;
  Node? next;
  Node(this.data);
}

class LinkedListQueue{
 Node? head, tail;

 void enqueue(int data){
  var newNode = Node(data);
  if (head == null) {
    head = tail = newNode;    
  }else{
    tail!.next = newNode;
    tail = newNode;
  }
 }

 void dequeue(){
  head = head!.next;
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
}

void main(List<String> args) {
  var queue = LinkedListQueue();

  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.dequeue();
  queue.display();
}