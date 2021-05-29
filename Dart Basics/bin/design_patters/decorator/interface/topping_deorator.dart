import 'pizza.dart';

abstract class ToppingDecorator extends Pizza {
  const ToppingDecorator(this.pizza);

  @override
  Size get size => pizza.size;

  final Pizza pizza;
}
