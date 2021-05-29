import '../interface/interator.dart';
import '../interface/menu.dart';
import '../iterators/mohit_menu_iterator.dart';
import '../models/menu_item.dart';

class MohitMenu implements Menu {
  final Set<MenuItem> items;

  MohitMenu(this.items);

  @override
  Iterator<MenuItem> getIterator() {
    return MohitMenuIterator(items);
  }
}
