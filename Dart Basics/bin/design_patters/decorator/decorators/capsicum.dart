import '../exceptions.dart';
import '../interface/pizza.dart';
import '../interface/topping_deorator.dart';

class Capsicum extends ToppingDecorator {
  const Capsicum(Pizza pizza) : super(pizza);

  @override
  num get cost => pizza.cost + _ownCost;

  @override
  String get description => pizza.description + ', $_ownDescription';

  final String _ownDescription = 'with capsicum';

  num get _ownCost {
    switch (size) {
      case Size.Small:
        return 60;
        break;
      case Size.Medium:
        return 70;
        break;
      case Size.Large:
        return 80;
        break;
      default:
        throw PriceNotImplementedException('Not implement capsicum price');
    }
  }
}
