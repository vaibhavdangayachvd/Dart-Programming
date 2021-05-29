import '../pizzas/core.dart';
import 'pizza.dart';

abstract class PizzaFactory{
  Pizza prepare(PizzaType pizza);
}