import 'dart:async';

main() {
  NumberGenerator().stream.listen((value){
    if(value.isOdd) {
      print('$value is odd');
    }
    else {
      print('$value is even');
    }
  });
}

class NumberGenerator {
  int _count = 0;
  final StreamController<int> _streamController = StreamController();
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
