import 'factories/american_factory.dart';
import 'factories/indian_factory.dart';
import 'pizza_store.dart';
import 'pizzas/core.dart';

void main() {
  final indianStore = PizzaStore(IndianPizzaFactory());
  indianStore.orderPizza(PizzaType.CheesePizza);
  final americanStore = PizzaStore(AmericanPizzaFactory());
  americanStore.orderPizza(PizzaType.CheesePizza);
}
