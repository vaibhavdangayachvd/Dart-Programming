import '../interface/interator.dart';
import '../models/menu_item.dart';

class MohitMenuIterator implements Iterator<MenuItem> {
  final Set<MenuItem> items;
  int currentIndex = 0;

  MohitMenuIterator(this.items);

  @override
  bool hasNext() {
    if (currentIndex >= items.length || items.elementAt(currentIndex) == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  MenuItem next() {
    return items.elementAt(currentIndex++);
  }
}
