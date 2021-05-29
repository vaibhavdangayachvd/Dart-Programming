import '../interface/interator.dart';
import '../models/menu_item.dart';

class VaibhavMenuIterator implements Iterator<MenuItem> {
  final List<MenuItem> items;
  int currentIndex = 0;

  VaibhavMenuIterator(this.items);

  @override
  bool hasNext() {
    if (currentIndex >= items.length || items[currentIndex] == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  MenuItem next() {
    return items[currentIndex++];
  }
}
