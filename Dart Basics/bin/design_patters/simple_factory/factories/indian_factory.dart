import '../interface/pizza.dart';
import '../interface/pizza_factroy.dart';
import '../pizzas/core.dart';
import '../pizzas/indian/cheese_pizza.dart';
import '../pizzas/indian/sauce_pizza.dart';

class IndianPizzaFactory implements PizzaFactory {
  @override
  Pizza prepare(PizzaType pizza) {
    switch (pizza) {
      case PizzaType.CheesePizza:
        return IndianCheesePizza();
        break;
      case PizzaType.SaucePizza:
        return IndianSaucePizza();
        break;
    }
  }
}
