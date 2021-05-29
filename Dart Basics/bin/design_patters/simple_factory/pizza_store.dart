import 'interface/pizza.dart';
import 'interface/pizza_factroy.dart';
import 'interface/pizza_store.dart';
import 'pizzas/core.dart';

class PizzaStore implements IPizzaStore {
  PizzaStore(this.factory);

  @override
  void orderPizza(PizzaType pizza) {
    final currentPizza = factory.prepare(pizza);
    currentPizza.prepare();
    currentPizza.bake();
    currentPizza.complete();
  }

  @override
  final PizzaFactory factory;
}
