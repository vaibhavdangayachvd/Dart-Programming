import '../interface/core.dart';
import '../interface/pizza.dart';
import '../interface/pizza_store.dart';
import '../pizzas/indian/cheese_pizza.dart';
import '../pizzas/indian/sauce_pizza.dart';

class AmericanPizzaStore extends PizzaStore {
  @override
  Pizza create(PizzaType type) {
    switch (type) {
      case PizzaType.CheesePizza:
        return IndianCheesePizza();
        break;
      case PizzaType.SaucePizza:
        return IndianSaucePizza();
        break;
    }
  }
}
