import 'decorators/onion.dart';
import 'decorators/tomato.dart';
import 'farm_house.dart';
import 'interface/pizza.dart';

void main() {
  Pizza pizza =
      FarmHouse(cost: 40, description: 'Farm House', size: Size.Large);
  pizza = Onion(pizza);
  pizza = Tomato(pizza);
  print(pizza.description);
  print('Price : Rs.' + pizza.cost.toString());
}
