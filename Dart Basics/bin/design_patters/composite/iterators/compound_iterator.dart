import 'dart:collection';

import '../interface/iterator.dart';
import '../interface/menu_composite.dart';

class CompoundIterator implements Iterator<MenuComposite> {
  ListQueue<Iterator<MenuComposite>> stack = ListQueue();

  CompoundIterator(Iterator<MenuComposite> iterator) {
    stack.addFirst(iterator);
  }

  @override
  bool hasNext() {
    if (stack.isEmpty) {
      return false;
    }
    final iterator = stack.first;
    if (!iterator.hasNext()) {
      stack.removeFirst();
      return hasNext();
    } else {
      return true;
    }
  }

  @override
  MenuComposite next() {
    if (hasNext()) {
      final iterator = stack.first;
      final composite = iterator.next();
      stack.addFirst(composite.createIterator());
      return composite;
    }else{
      return null;
    }
  }
}
