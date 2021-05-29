import 'interface/menu.dart';
import 'interface/waitress.dart';

class ConcreteWaitress implements Waitress {
  @override
  final List<Menu> menus;

  ConcreteWaitress(this.menus);

  @override
  void printMenus() {
    menus.forEach((element) {
      final iterator = element.getIterator();
      while (iterator.hasNext()) {
        final item = iterator.next();
        print(item.name + ' - ' + item.description);
      }
      print('');
    });
  }
}
