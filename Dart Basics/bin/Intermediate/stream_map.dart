import 'dart:async';

void main() async {
  await for (var i in getRangeInString()) {
    print(i);
  }
}

Stream<int> getRangeInString() {
  return Stream.fromIterable([122, 3, 4, 5, 6, 6]);
}

Stream<int> getRange() async* {
  for (var i = 0; i < 10; ++i) {
    yield i;
    await Future.delayed(Duration(seconds: 2));
  }
}
