import 'interface/i_waitress.dart';
import 'interface/menu_composite.dart';
import 'iterators/compound_iterator.dart';

class Waitress implements IWaitress {
  final MenuComposite composite;

  Waitress(this.composite);

  @override
  void printMenu() {
    final iterator = CompoundIterator(composite.createIterator());
    while (iterator.hasNext()) {
      iterator.next().printContents();
    }
  }
}
