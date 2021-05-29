import 'singleton.dart';

void main() {
  final singleton1 = MySingleton();
  final singleton2 = MySingleton();
  print(singleton2.name);
}
