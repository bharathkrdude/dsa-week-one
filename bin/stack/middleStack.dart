class Stack {
  late List<int> arr;
  late int top;
  late int capacity;
  Stack(int size){
    arr = List.filled(size, 0);
    capacity = size;
    top = -1;
  }
  void push(int data){
    if (isFull()) {
      print("stack is full");
      return;
    }
    print("inserting $data");
    arr[++top] = data;
  }
  int pop(){
    if (isEmpty()) {
      print("stack is Empty");
    }
    return arr[top--];
  }
 bool isEmpty(){
  return top == -1;
 }
 bool isFull(){
  return top == capacity-1;
 }
 int size(){
  return top+1;
 }
 void printStack(){
  for (int i = 0; i <= top; i++) {
    print(arr[i]);
  }
 }
 int peek(){
  if (isEmpty()) {
    print("Stack is empty");
    return -1;
  }
  print("peek elment is ${arr[top]}");
  return arr[top];
 }
}
void main(List<String> args) {
  Stack stk = Stack(10);
  Stack st2 = Stack(10); 
  stk.push(10);
  stk.push(12);
  stk.push(14);
  stk.push(15);
  stk.push(17);
}