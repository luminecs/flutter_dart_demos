var record = ('first', a: 2, b: true, 'last');

(int, int) swap((int, int) r) {
  var (a, b) = r;
  return (b, a);
}
