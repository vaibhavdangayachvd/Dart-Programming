import '../../interface/pizza.dart';

class IndianCheesePizza implements Pizza {
  @override
  void bake() {
    print('Baking Indian Cheese Pizza');
  }

  @override
  void complete() {
    print('Making Indian Cheese Pizza');
  }

  @override
  void prepare() {
    print('Preparing Indian Cheese Pizza');
  }
}
