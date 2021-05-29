import 'dart:math';

main() {
  getNumbers(10).listen((n) {
    print(n);
  });
}

Future<int> getNumFromInFuture() async{
  await Future.delayed(Duration(seconds: 2), (){});
  return Random().nextInt(10);
}

Stream<int> getNumbers(int num) async* {
  for (int i = 0; i < num; ++i) {
    yield await getNumFromInFuture();
  }
}
