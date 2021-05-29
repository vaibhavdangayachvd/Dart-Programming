import '../interface/interator.dart';
import '../interface/menu.dart';
import '../iterators/vaibhav_menu_iterator.dart';
import '../models/menu_item.dart';

class VaibhavMenu implements Menu {
  final List<MenuItem> items;

  VaibhavMenu(this.items);

  @override
  Iterator<MenuItem> getIterator() {
    return VaibhavMenuIterator(items);
  }
}
