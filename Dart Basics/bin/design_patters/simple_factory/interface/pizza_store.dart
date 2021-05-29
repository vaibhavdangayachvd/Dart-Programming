import '../pizzas/core.dart';
import 'pizza_factroy.dart';

abstract class IPizzaStore{
  PizzaFactory get factory;
  void orderPizza(PizzaType pizza);
}