import 'interface/menu.dart';
import 'interface/waitress.dart';
import 'menus/mohit_menu.dart';
import 'menus/vaibhav_menu.dart';
import 'models/menu_item.dart';
import 'waitress.dart';

void main() {
  final vegMenusList = List<MenuItem>.generate(
    3,
    (index) => MenuItem(
      name: 'Veg Menu$index',
      isVegetarian: true,
      description: 'Veg Description$index',
      price: 100 + index,
    ),
  );
  final nonVegMenusList = List<MenuItem>.generate(
    3,
    (index) => MenuItem(
      name: 'NonVeg Menu$index',
      isVegetarian: true,
      description: 'NonVeg Description$index',
      price: 200 + index,
    ),
  );
  final nonVegMenuSet = Set<MenuItem>.from(nonVegMenusList);
  final menus = <Menu>[
    VaibhavMenu(vegMenusList),
    MohitMenu(nonVegMenuSet),
  ];

  Waitress waitress = ConcreteWaitress(menus);

  waitress.printMenus();
}
