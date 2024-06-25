var list = [1, 2, 3];
var list2 = [0, ...list, 4, 5];

var set1 = {'a', 'b'};
var set2 = {'c', ...set1, 'd'};

void main() {
  print(list2); // [0, 1, 2, 3, 4, 5]
  print(set2); // {c, a, b, d}
}