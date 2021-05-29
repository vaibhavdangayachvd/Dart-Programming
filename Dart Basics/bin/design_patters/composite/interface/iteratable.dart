import 'iterator.dart';

abstract class Iteratable<T> {
  Iterator<T> createIterator();
}
