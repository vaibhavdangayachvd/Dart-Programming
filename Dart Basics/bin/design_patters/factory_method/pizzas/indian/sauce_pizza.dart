import '../../interface/pizza.dart';

class IndianSaucePizza implements Pizza {
  @override
  void bake() {
    print('Baking Indian Sauce Pizza');
  }

  @override
  void complete() {
    print('Making Indian Sauce Pizza');
  }

  @override
  void prepare() {
    print('Preparing Indian Sauce Pizza');
  }
}