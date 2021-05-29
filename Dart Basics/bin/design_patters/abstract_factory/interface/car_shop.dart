import 'car.dart';
import 'core.dart';

abstract class CarShop {
  Car createCar(CarType type);

  void orderCar(CarType type) {
    final car=createCar(type);
    car.showDescription();
  }
}
