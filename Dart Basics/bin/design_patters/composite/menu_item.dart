import 'package:freezed_annotation/freezed_annotation.dart';

import 'interface/iterator.dart';
import 'interface/menu_composite.dart';
import 'iterators/null_iterator.dart';

class MenuItem extends MenuComposite {
  @override
  final String name, description;

  MenuItem({
    @required this.name,
    @required this.description,
  });

  @override
  void printContents() {
    print(name + ' - ' + description);
  }

  @override
  Iterator<MenuComposite> createIterator() {
    return NullIterator();
  }
}
