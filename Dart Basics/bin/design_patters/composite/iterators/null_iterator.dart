import '../interface/iterator.dart';

class NullIterator<T> implements Iterator<T> {
  @override
  bool hasNext() {
    return false;
  }

  @override
  T next() {
    return null;
  }
}
