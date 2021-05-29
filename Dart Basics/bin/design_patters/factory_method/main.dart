import 'interface/core.dart';
import 'stores/american_pizza_store.dart';
import 'stores/indian_pizza_store.dart';

void main(){
  final indianStore=IndianPizzaStore();
  indianStore.order(PizzaType.CheesePizza);
  final americanStore=AmericanPizzaStore();
  americanStore.order(PizzaType.CheesePizza);
}