import '../models/menu_item.dart';
import 'interator.dart';

abstract class Menu {
  Iterator<MenuItem> getIterator();
}
