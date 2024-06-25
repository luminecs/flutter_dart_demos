Stream<int> countStream = Stream.periodic(
  Duration(seconds: 1),
  (count) => count,
).take(10);

void main() {
  countStream.listen((count) {
    print(count);
  });
}
