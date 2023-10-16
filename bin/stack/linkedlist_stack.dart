class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;
  void push(int data) {
    var newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  void pop() {
    if (top == null) {
      print('stack is empty');
    } else {
      top = top!.next;
    }
  }

  int peek() {
    if (top == null) {
      print('stack is empty');
      return -1;
    }
    return top!.data;
  }
}

void main(List<String> args) {
  var stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  print('Peek: ${stack.peek()}');
  stack.pop();
  print('popped');
  print('Peek: ${stack.peek()}');
  
}