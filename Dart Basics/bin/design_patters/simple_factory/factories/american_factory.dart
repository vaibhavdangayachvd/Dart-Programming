import '../interface/pizza.dart';
import '../interface/pizza_factroy.dart';
import '../pizzas/american/cheese_pizza.dart';
import '../pizzas/american/sauce_pizza.dart';
import '../pizzas/core.dart';

class AmericanPizzaFactory implements PizzaFactory {
  @override
  Pizza prepare(PizzaType pizza) {
    switch (pizza) {
      case PizzaType.CheesePizza:
        return AmericanCheesePizza();
        break;
      case PizzaType.SaucePizza:
        return AmericanSaucePizza();
        break;
    }
  }
}
