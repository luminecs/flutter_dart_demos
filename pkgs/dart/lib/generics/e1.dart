class Box<T> {
  T content;
  Box(this.content);
}

void main() {
  var intBox = Box<int>(123);
  var stringBox = Box<String>('Hello');
}