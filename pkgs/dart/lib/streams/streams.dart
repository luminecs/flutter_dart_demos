Stream<int> countStream = Stream.periodic(Duration(seconds: 1));

void main() {
  countStream.listen((count) {
    print(count);
  });
}
