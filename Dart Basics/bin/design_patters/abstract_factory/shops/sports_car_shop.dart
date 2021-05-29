import '../cars/normal_car.dart';
import '../cars/sports_car.dart';
import '../interface/car.dart';
import '../interface/car_shop.dart';
import '../interface/core.dart';
import '../part_factories/sports_part_factory.dart';

class SportsCarShop extends CarShop {
  @override
  Car createCar(CarType type) {
    switch (type) {
      case CarType.Sports:
        return SportsCar(SportsPartFactory());
        break;
      case CarType.Normal:
        return NormalCar(SportsPartFactory());
        break;
    }
  }
}
