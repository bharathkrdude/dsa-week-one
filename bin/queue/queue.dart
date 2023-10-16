class Queue {
  late List<int> arr;
  late int rear;
  late int front;
  late int size;
  Queue(int this.size) {
    arr = List.generate(size, (index) => 0);
    front = -1;
    rear = -1;
  }
  bool isFull() {
    if (front == 0 && rear == size - 1) {
      return true;
    } else {
      return false;
    }
  }

  bool isEmpty() {
    if (front == -1) {
      return true;
    } else {
      return false;
    }
  }

  void enQueue(int data) {
    if (isFull()) {
      print("Queue is full");
    }else{
      if (front == -1)
      front = 0;
      rear ++;
      arr[rear] = data;
      print("inserted $data");
    }
  }
  int deQueue(){
    int data;
    if (isEmpty()) {
      print("Queue is full");
      return -1;
    }else{
      data = arr[front];
      if (front >=rear) {
        front = -1;
        rear = -1;
      }else{
        front ++;
      }
      print("Deleted $data");
        return (data);
    }
  }
  void display(){
    if (isEmpty()) {
      print("Queue is empty");
    }else{
      print("Front Index-> $front");
      print("Items-> ");
      for (int i = front; i <= rear; i++) {
        print("${arr[i]}  ");
      }
    }
  }
}


void main(List<String> args) {
  Queue newqueue = Queue(5);
  newqueue.enQueue(10);
  newqueue.enQueue(20);
  newqueue.enQueue(30);
  newqueue.display();

}