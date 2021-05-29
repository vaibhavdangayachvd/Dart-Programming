main() {
  first();
  second();
  third();
}

void first() {
  print('First');
}

Future<void> second() async {
  print(await getSecond());
}

Future<String> getSecond() {
  return Future.delayed((Duration(seconds: 4)), () {
    return 'Second';
  });
}

void third() {
  print('Third');
}
