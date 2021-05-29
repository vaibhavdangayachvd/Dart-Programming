import '../../interface/pizza.dart';

class AmericanSaucePizza implements Pizza {
  @override
  void bake() {
    print('Baking American Sauce Pizza');
  }

  @override
  void complete() {
    print('Making American Sauce Pizza');
  }

  @override
  void prepare() {
    print('Preparing American Sauce Pizza');
  }
}