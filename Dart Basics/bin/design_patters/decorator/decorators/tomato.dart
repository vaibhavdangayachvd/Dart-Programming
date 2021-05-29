import '../exceptions.dart';
import '../interface/pizza.dart';
import '../interface/topping_deorator.dart';

class Tomato extends ToppingDecorator {
  const Tomato(Pizza pizza) : super(pizza);

  @override
  num get cost => pizza.cost + _ownCost;

  @override
  String get description => pizza.description + ', $_ownDescription';

  final String _ownDescription = 'with tomato';

  num get _ownCost {
    switch (size) {
      case Size.Small:
        return 40;
        break;
      case Size.Medium:
        return 50;
        break;
      case Size.Large:
        return 60;
        break;
      default:
        throw PriceNotImplementedException('Not implement tomato price');
    }
  }
}
