var r = ('first', a: 2, b: true, 'last');

(int, int) swap((int, int) r) {
  var (a, b) = r;
  return (b, a);
}

(String, int) record = ('', 123);

({int a, bool b}) record2 = (a: 1, b: false);
