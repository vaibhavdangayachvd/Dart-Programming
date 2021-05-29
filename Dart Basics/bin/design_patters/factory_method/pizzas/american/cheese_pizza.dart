import '../../interface/pizza.dart';

class AmericanCheesePizza implements Pizza{
  @override
  void bake() {
    print('Baking American Cheese Pizza');
  }

  @override
  void complete() {
    print('Making American Cheese Pizza');
  }

  @override
  void prepare() {
    print('Preparing American Cheese Pizza');
  }

}