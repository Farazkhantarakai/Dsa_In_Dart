class Node<T> {
  T value;
  Node? rightValue;
  Node? leftValue;
  Node(this.value, [this.leftValue, this.rightValue]);
}

void main() {
  Node a = Node('a');
  Node b = Node('b');
  Node c = Node('c');
  Node d = Node('d');
  Node e = Node('e');
  Node f = Node('f');

  a.rightValue = c;
  a.leftValue = b;
  b.rightValue = e;
  b.leftValue = d;
  c.rightValue = f;

// the upper code gonna create a tree like this
  //      a
  //     / \
  //    b   c
  //   / \    \
  //  d   e    f

// depth first traversal algorithim
// traversal means visiting each node once
  var values = dfs(a);
  print(values);
}

dfs(Node root) {
  //if the value inside this node is null  then do return
  if (root.value == null) return;
  List values = [];
  List stack = [root];
  //if will execute only once while will execute upto the
  while (stack.isNotEmpty) {
    //this will remove the last element and will add into the current
    Node current = stack.removeLast();
    values.add(current.value);
    if (current.rightValue != null) {
      stack.add(current.rightValue);
    }
    if (current.leftValue != null) {
      stack.add(current.leftValue);
    }
  }
  return values;
}
