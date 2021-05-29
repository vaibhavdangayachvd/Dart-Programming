import 'iteratable.dart';

abstract class MenuComposite implements Iteratable<MenuComposite>{
  void printContents() {
    throw UnsupportedError('This operation is not supported');
  }

  String get name {
    throw UnsupportedError('This operation is not supported');
  }

  String get description {
    throw UnsupportedError('This operation is not supported');
  }

  void add(MenuComposite composite) {
    throw UnsupportedError('This operation is not supported');
  }

  void remove(MenuComposite composite) {
    throw UnsupportedError('This operation is not supported');
  }
  void addAll(List<MenuComposite> composite) {
    throw UnsupportedError('This operation is not supported');
  }
  MenuComposite getChild(int i) {
    throw UnsupportedError('This operation is not supported');
  }
}
