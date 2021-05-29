import '../cars/normal_car.dart';
import '../cars/sports_car.dart';
import '../interface/car.dart';
import '../interface/car_shop.dart';
import '../interface/core.dart';
import '../part_factories/normal_parts_factory.dart';

class NormalCarShop extends CarShop {
  @override
  Car createCar(CarType type) {
    switch (type) {
      case CarType.Sports:
        return SportsCar(NormalPartFactory());
        break;
      case CarType.Normal:
        return NormalCar(NormalPartFactory());
        break;
    }
  }
}
