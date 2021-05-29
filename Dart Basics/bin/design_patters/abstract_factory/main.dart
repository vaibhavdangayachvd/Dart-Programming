import 'interface/core.dart';
import 'shops/normal_car_shop.dart';
import 'shops/sports_car_shop.dart';

void main() {
  final normalShop = NormalCarShop();
  normalShop.orderCar(CarType.Normal);
  final sportsShop = SportsCarShop();
  sportsShop.orderCar(CarType.Sports);
}
