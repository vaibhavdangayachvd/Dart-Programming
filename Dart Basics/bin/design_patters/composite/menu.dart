import 'interface/iterator.dart';
import 'interface/menu_composite.dart';
import 'iterators/composite_iterator.dart';

class Menu extends MenuComposite {
  @override
  final String name, description;
  List<MenuComposite> menuComponents = [];

  Menu({
    @override this.name,
    @override this.description,
  });

  @override
  void add(MenuComposite composite) {
    assert(composite != null);
    menuComponents.add(composite);
  }

  @override
  void addAll(List<MenuComposite> composite) {
    assert(composite != null);
    composite.forEach((element) => menuComponents.add(element));
  }

  @override
  void remove(MenuComposite composite) {
    assert(composite != null);
    menuComponents.remove(composite);
  }

  @override
  MenuComposite getChild(int i) {
    assert(i != null && i < menuComponents.length);
    return menuComponents[i];
  }

  @override
  Iterator<MenuComposite> createIterator() {
    return CompositeIterator(menuComponents);
  }

  @override
  void printContents() {
    print(name + ' - ' + description);
    print('--------------------');
    //Because using external iterator and this comment is an internal iterator and if I enable it then duplicate values will be called
    //menuComponents.forEach((element) => element.printContents());
  }
}
