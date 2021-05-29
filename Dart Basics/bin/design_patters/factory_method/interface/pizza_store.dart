import 'core.dart';
import 'pizza.dart';

abstract class PizzaStore{
  Pizza create(PizzaType type);
  void order(PizzaType type){
    final pizza=create(type);
    pizza.prepare();
    pizza.bake();
    pizza.complete();
  }
}