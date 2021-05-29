/*import 'dart:async';

main() {
  var numberStream = NumberGenerator().stream.asBroadcastStream();
  numberStream.where((value) => value % 2 == 0 ? false : true).listen((value) {
    print('$value is odd');
  });
  numberStream.where((value) => value % 2 == 0 ? true : false).listen((value) {
    print('$value is even');
  });
  printSum(numberStream);
}

Future<void> printSum(Stream<int> stream) async {
  int sum = 0;
  await for (final i in stream) {
    sum += i;
  }
  print('Sum is $sum');
}

class NumberGenerator {
  int _count = 0;
  StreamController<int> _streamController = StreamController();
  Timer timer;

  NumberGenerator() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (_count != 5) {
        _streamController.sink.add(++_count);
      } else {
        _streamController.close();
        timer.cancel();
      }
    });
  }

  Stream<int> get stream => _streamController.stream;
}
*/