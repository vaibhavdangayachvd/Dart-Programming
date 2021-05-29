import '../exceptions.dart';
import '../interface/pizza.dart';
import '../interface/topping_deorator.dart';

class Onion extends ToppingDecorator {
  const Onion(Pizza pizza) : super(pizza);

  @override
  num get cost => pizza.cost + _ownCost;

  @override
  String get description => pizza.description + ', $_ownDescription';

  final String _ownDescription = 'with onion';

  num get _ownCost {
    switch (size) {
      case Size.Small:
        return 30;
        break;
      case Size.Medium:
        return 40;
        break;
      case Size.Large:
        return 50;
        break;
      default:
        throw PriceNotImplementedException('Not implement onion price');
    }
  }
}
