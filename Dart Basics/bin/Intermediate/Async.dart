main() {
  first();
  second();
  third();
}

void first() {
  print('First');
}

void second() {
  getSecond().then((value) {
    print(value);
  });
}

Future<String> getSecond() {
  return Future.delayed((Duration(seconds: 4)), () {
    return 'Second';
  });
}

void third() {
  print('Third');
}
