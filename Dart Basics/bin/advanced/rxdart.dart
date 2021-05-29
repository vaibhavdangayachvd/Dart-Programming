import 'dart:async';

import 'package:rxdart/rxdart.dart';

extension MyCustomStream on Stream {
  void printItself() {
    listen((event) {
      print(event);
    });
  }
}

extension MyNum on int {
  Duration get seconds => Duration(seconds: this);

  Duration get milliseconds => Duration(milliseconds: this);

  Future<void> get futureSeconds => Future.delayed(seconds);
}

void main() async {
  RangeStream(4, 1).interval(1.seconds).flatMap((i) {
    return Stream.fromIterable(List.generate(i, (index) => i));
  }).printItself(); // prints 1, 2, 3, 4
}
