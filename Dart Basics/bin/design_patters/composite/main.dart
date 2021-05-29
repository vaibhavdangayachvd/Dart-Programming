import 'interface/i_waitress.dart';
import 'menu.dart';
import 'menu_item.dart';
import 'waitress.dart';

void main() {
  final vegMenuItems = List<MenuItem>.generate(
    3,
    (index) => MenuItem(
      name: 'VegItem$index',
      description: 'I am VegItem$index',
    ),
  );

  final nonVegMenuItems = List<MenuItem>.generate(
    3,
    (index) => MenuItem(
      name: 'NonVegItem$index',
      description: 'I am NonVegItem$index',
    ),
  );

  final vegMenu = Menu(description: 'I am VegMenu', name: 'VegMenu');
  vegMenu.addAll(vegMenuItems);
  final nonVegMenu = Menu(description: 'I am NonVegMenu', name: 'NonVegMenu');
  nonVegMenu.addAll(nonVegMenuItems);

  final mainMenu = Menu(name: 'Main Menu', description: 'I am main');
  mainMenu.addAll([vegMenu, nonVegMenu]);

  IWaitress waitress = Waitress(mainMenu);
  waitress.printMenu();
}
