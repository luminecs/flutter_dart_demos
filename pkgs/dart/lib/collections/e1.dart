// [Alice, Bob, Item 1, Item 2, Item 3]
var list = [
  'Alice',
  if (true) 'Bob',
  for (var i in [1, 2, 3]) 'Item $i',
];

// {key1: value1, key2: value2, key3: value3}
var map = {
  'key1': 'value1',
  if (true) 'key2': 'value2',
  for (var i in [1, 2, 3]) 'key$i': 'value$i',
};

void main() {
  print(list);
  print(map);
}
