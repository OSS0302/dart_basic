void main() {
  final stopWatch = Stopwatch()..start();

  pratice2();

  print(stopWatch.elapsedMilliseconds);
}
  void pratice1() {
    var string = '';
    for (int i = 0; i < 100000; i++) {
      string += i.toString();
    }
  }
    void pratice2() {
      var string = StringBuffer('');
      for (int i = 0; i < 100000; i++) {
        string.write(i.toString());
      }
    }

