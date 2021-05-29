import '../interface/iterator.dart';

class CompositeIterator<T> implements Iterator<T> {
  final List<T> menuComponents;
  int currentIndex = 0;

  CompositeIterator(this.menuComponents);

  @override
  bool hasNext() {
    if (currentIndex >= menuComponents.length) {
      return false;
    } else {
      return true;
    }
  }

  @override
  T next() {
    return menuComponents[currentIndex++];
  }
}
